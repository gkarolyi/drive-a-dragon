class MessagesController < ApplicationController
  def index
    @messages = policy_scope(Message).where(sender_id: current_user.id).or(Message.where(receiver_id: current_user.id))

    authorize @messages
  end

  def show
    raise
    @sender = User.find(params[:users][:ids])
    @receiver = User.find(params[:receiver_id])
    @messages = Message.where(sender_id: @sender.id, receiver_id: @receiver.id).or(Message.where(sender_id: @receiver.id, receiver_id: @sender.id))
    @chat_id = [@sender.id, @receiver.id].sort.join("") #generates a unique identifier for a pair of user 
  end

  def new
  end
end

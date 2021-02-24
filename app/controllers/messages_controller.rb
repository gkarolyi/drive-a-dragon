class MessagesController < ApplicationController
  def index
    @messages = policy_scope(Message)
    authorize @messages
  end

  def show 
        @sender = User.find(params[:users][:ids])
        @receiver = User.find(params[:receiver_id])
        @messages = Message.where(sender_id: @sender.id, receiver_id: @receiver.id).or(Message.where(sender_id: @receiver.id, receiver_id: @sender.id))
        @chat_id = [@sender.id, @receiver.id].sort.join("") #generates a unique identifier for a pair of user 
    end 
end

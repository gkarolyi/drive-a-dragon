class MessagesController < ApplicationController
  def index
    @messages = policy_scope(Message)
    authorize @messages
  end
end

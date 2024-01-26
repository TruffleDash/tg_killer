class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
  end 

  private

  def message_params
    params.require(:message).permit(:body).merge(user_id: current_user.id, chat_id: params[:chat_id])
  end
end

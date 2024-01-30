# class MessagesController < ApplicationController
#   def create
#     @message = Message.create(message_params)
#   end 

#   private

#   def message_params
#     params.require(:message).permit(:body).merge(user_id: current_user.id, chat_id: params[:chat_id])
#   end
# end

class MessagesController < ApplicationController
  def create
    @chat = Chat.find(params[:chat_id])
    @message = @chat.messages.create(message_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @message.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.append('messages', partial: 'messages/message', locals: { message: @message })
        end
        format.html { redirect_to @chat }
      else
        format.html { render 'chats/show', status: :unprocessable_entity }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end

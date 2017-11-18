class MessagesController < ApplicationController
  def new
     @message = Message.new
  end
  def create
    message_params = params.require(:message).permit(:name, :email, :body)
    @message = Message.new message_params

    if @message.valid?
      redirect_to new_message_url, notice: "Message received, thanks!"
    else
      render :new
    end
  end
  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end

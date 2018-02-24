

class MessagesController < ApplicationController

  def show
  end

  def new
  	@message = Message.new
  end

  def create

    @message = Message.new(message_params)

    if @message.save
      redirect_to @message
    else
      render "new"
    end

  end

  def message_params
    params.require(:message).permit(:user_id, :body)
  end

end
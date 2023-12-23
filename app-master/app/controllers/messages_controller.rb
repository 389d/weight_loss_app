class MessagesController < ApplicationController
  def create
    @message = ChatMessage.new(message_params)

    if @message.save
      redirect_to clients_path, notice: 'Сообщение успешно создано.'
    else
      render :new
    end
  end

  private

def message_params
  params.permit(:client_id, :message)
end
end
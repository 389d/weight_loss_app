class ClientsController < ApplicationController
  def index
    @clients = Client.all # Получение списка всех клиентов


  end

  def new
    @client = Client.new # Создание нового экземпляра клиента

  end

  def create
    @client = Client.new(client_params) # Создание нового клиента с переданными параметрами

    if @client.save
      redirect_to clients_path, notice: 'Клиент успешно создан.' # Перенаправление на страницу списка клиентов с сообщением об успехе
    else
      render :new
    end
  end

  private

def client_params
  params.permit(:name, :email, :phone)
end
end
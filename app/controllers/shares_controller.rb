class SharesController < ApplicationController
  def index
    @shares = Share.all # Получение списка всех акций
  end

  def show
    @share = Share.find(params[:id])
  end

  def new
    @share = Share.new # Создание нового экземпляра акции
  end

  def create
    @share = Share.new(share_param) # Создание новой акции с переданными параметрами

    
    if @share.save
      redirect_to @share, notice: 'Акция успешно создана.' # Перенаправление на страницу списка акций с сообщением об успехе
    else
      render :new, status: 422
    end
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])
    if @share.update(share_params)
      redirect_to @share, notice: 'Акция успешно создана.'
    else
      render :edit
    end
  end

  def buy
    @share = Share.find(params[:id])
    @share.owner = current_user.id
    @share.save
    redirect_to shares_path, notice: 'Акция успешно куплена.'
  end

  def sell
    @share = Share.find(params[:id])
    @share.owner = nil
    @share.save
    redirect_to shares_path, notice: 'Акция успешно продана.'
  end

  def destroy
    @share = Share.find(params[:id])
    @share.destroy
    
    redirect_to shares_url, notice: 'Объект успешно удалён.'
  end

  private

  def share_params
    params.require(:share).permit(:name, :cost) # Удаляем .require(:share)
  end
  def share_param
    params.permit(:name, :cost) # Удаляем .require(:share)
  end
end

class RegistrationsController < Devise::RegistrationsController
  private
  
  def after_sign_in_path_for(resource)
    authenticated_clients_path
  end
  
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :role)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :current_password)
  end
end
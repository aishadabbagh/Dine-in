class ApplicationController < ActionController::Base
# creating devise
  before_action :configure_permitted_parameters, if: :devise_controller?
  

# Creating roles for users ???????  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:Name, :Phone_Number, :Role, :Wallet])
    devise_parameter_sanitizer.permit(:account_update, keys: [:Name, :Phone_Number, :Role, :Wallet])
  end

end

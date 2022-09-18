class ApplicationController < ActionController::Base
  
  include Pagy::Backend
  
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(reservations)
    reservations_path
  end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :role, :first_name, :last_name, :city, :state, :country])
  end

end



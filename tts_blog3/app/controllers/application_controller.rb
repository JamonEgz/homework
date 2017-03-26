class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  protected
  		def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({roles: [] }, :email, :password, :password_confirmation, :name, :username, :birthday) }
  		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({roles: [] }, :email, :password, :password_confirmation, :current_password, :name, :username, :birthday) }
  		end
end
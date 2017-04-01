class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin, :name, :user])
    devise_parameter_sanitizer.permit(:account_update, keys: [:admin, :name, :user])
  end
end

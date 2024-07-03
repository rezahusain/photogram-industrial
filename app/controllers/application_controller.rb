class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # Allows attributes to be changed within sign up and update forms, keys point to the attributes 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :name])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:username, :name])
  end
end

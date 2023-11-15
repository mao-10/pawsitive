class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitzier.permit(:sign_up, keys: [:first_name, :last_name])
  end


end

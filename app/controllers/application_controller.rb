class ApplicationController < ActionController::Base
  before_action :authenticate_user!,except: [:top]

  before_action :configure_permited_parameters, if: :devise_controller?

 def after_sign_in_path_for(resouce)
   articles_path
 end

 def after_sign_up_path_for(resouce)
   articles_path
 end

  protected

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
    devise_parameter_sanitizer.permit(:sign_in, keys:[:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile_image])
  end
end

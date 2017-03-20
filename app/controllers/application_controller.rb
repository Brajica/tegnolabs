class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :parametros_permitidos, if: :devise_controller?

    protected

    def parametros_permitidos
      devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:nombres,:apellidos,:rol,:email,:password,:password_confirmation)}
    end
end

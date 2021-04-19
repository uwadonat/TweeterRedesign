class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname,:profile_photo, :cover_image])
devise_parameter_sanitizer.permit(:account_update, keys: [:fullname,:profile_photo, :cover_image])
end
end

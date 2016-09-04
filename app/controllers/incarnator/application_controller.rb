module Incarnator
  class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :user_name
    end
  end
end

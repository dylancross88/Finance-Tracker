class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,
          keys: [:email, :first_name, :last_name,  :password, :password_confirmation])

      devise_parameter_sanitizer.permit(:account_update,
          keys: [:email, :first_name, :last_name,  :password, :password_confirmation])
    end
end
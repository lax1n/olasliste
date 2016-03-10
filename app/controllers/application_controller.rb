class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  private
  def set_locale
    I18n.locale = :en
    #Set depending on user

    #Set depending on ip-address

  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :avatar_url)
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :avatar_url)
    end
  end
end

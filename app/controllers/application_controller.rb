class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale


  def set_locale
    #Set depending on user

    #Set depending on ip-address
    
  end
end

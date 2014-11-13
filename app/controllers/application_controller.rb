class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    @locale = params[:locale].to_s || I18n.default_locale.to_s
    unless ['en', 'zh-CN'].include?(@locale)
      @locale = 'en'
    end
    I18n.locale = @locale
  end
end

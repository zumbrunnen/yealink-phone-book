class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    if cookies['locale'].nil? || params[:locale]
      I18n.locale = params[:locale] || I18n.default_locale
      cookies['locale'] = I18n.locale
    else
      I18n.locale = cookies['locale']
    end
  end
end

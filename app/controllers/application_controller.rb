class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  private

  def set_locale
    session[:locale] = params[:locale] if params[:locale].present?
  end
end

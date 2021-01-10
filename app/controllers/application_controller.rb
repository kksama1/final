# frozen_string_literal: true

# top-level class documentation comment
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  private

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[last_name first_name phone_numb role])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[last_name first_name phone_numb role email password avatar about work_exp])
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    parsed_locale.to_sym if I18n.available_locales.map(&:to_s).include?(parsed_locale)
  end
end

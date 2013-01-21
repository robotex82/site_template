class ApplicationController < ActionController::Base
  # Protect from CSRF
  protect_from_forgery

  # Add I18n routing support
  include RailsTools::I18nController
end


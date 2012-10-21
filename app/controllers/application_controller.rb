class ApplicationController < ActionController::Base
  layout 'frontend'

  protect_from_forgery

  include RailsTools::I18nController
end

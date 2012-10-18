require 'site_template/configuration'

module SiteTemplate
  extend Configuration
end

SiteTemplate.configure do |config|
  # google analytics
  #
  # Default: config.google_analytics_tracking_code = ''

  ## site title
  #
  # Default: config.site_title = ''
  config.site_title = 'Site Template'
end

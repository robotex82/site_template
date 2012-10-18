require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/hash_with_indifferent_access'

module SiteTemplate
  module Configuration
    def configure
      yield self
    end

    mattr_accessor :google_analytics_tracking_code
    @@google_analytics_tracking_code = ''

    mattr_accessor :site_title
    @@site_title = ''
  end
end

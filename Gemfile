source 'https://rubygems.org'

gem 'rails', '~> 3.2.12'
gem 'json'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Deployment
group :development do
  gem 'domain_factory', :git => 'git://github.com/robotex82/domain_factory.git'
  gem 'capistrano'
end

# Tools
gem 'yaml_db'

# Server
group :development, :test do
  gem 'thin'
end

# Database
group :development, :test do
  gem 'sqlite3'
end

group :staging, :production do
  gem 'mysql', '2.8.1'
end

# Testing
group :development, :test do
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara', :require => false
  gem 'factory_girl_rails', '~> 1.0', :require => false
  gem 'rb-inotify', '~> 0.9'
  gem 'shoulda-matchers', :require => false
  gem 'simplecov', :require => false
end

# CSS Framework
group :assets do
  gem 'twitter-bootstrap-rails'
end

group :development do
  gem 'therubyracer', :platforms => :ruby
  gem 'less-rails'
end

# I18n
gem 'rails-i18n'

# Admin area
gem 'devise-i18n'
gem 'activeadmin', '0.5.0'
# gem 'activeadmin', :git => 'git://github.com/gregbell/active_admin.git'

# ECM Modules
gem "ecm_cms", "~> 1.0.1.pre"
# gem 'ecm_cms', :path => '~/rails/modules/ecm_cms-master/'

gem 'ecm_contact', '~> 1.0.15.pre'
# gem 'ecm_contact', :path => '~/rails/modules/ecm_contact-master/'


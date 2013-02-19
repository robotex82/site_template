source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Deployment

group :development do
  gem 'domain_factory', :git => 'git://github.com/robotex82/domain_factory.git'
end

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
end

group :test do
  gem 'capybara', :require => false
  gem 'factory_girl_rails', '~> 1.0', :require => false
  gem 'rb-inotify', '~> 0.8.8'
  gem 'rspec-rails', :require => false
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
# gem 'activeadmin', '~>  0.5.1'
gem 'activeadmin', :git => 'git://github.com/gregbell/active_admin.git'

# ECM Modules

gem "ecm_cms", "~> 0.0.13.pre"
# gem 'ecm_cms', :path => '~/rails/modules/ecm_cms-master/'

gem 'ecm_contact', '~> 1.0.14.pre'
# gem 'ecm_contact', :path => '~/rails/modules/ecm_contact-master/'


source 'https://rubygems.org'

gem 'rails', '3.2.8'

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

group :assets do
  gem 'twitter-bootstrap-rails'
end

group :development do
  gem 'domain_factory', :git => 'git://github.com/robotex82/domain_factory.git'
end

group :development, :test do
  gem 'sqlite3'
  gem 'thin'
end

group :development, :test do
  gem 'factory_girl_rails', '~> 1.0', :require => false
  gem 'ffaker', :require => false
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'forgery', :require => false
end

group :test do
  gem 'capybara', :require => false
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', :require => false
  gem 'rb-inotify', '~> 0.8.8'
  gem 'rspec-rails'
  gem 'shoulda-matchers', :require => false
  gem 'simplecov', :require => false
end

group :staging, :production do
  gem 'mysql', '2.8.1'
end

# Add ECM CMS dependencies until the module is stable
gem 'i18n_routing'
gem 'simple-navigation'
gem 'simple-navigation-bootstrap'


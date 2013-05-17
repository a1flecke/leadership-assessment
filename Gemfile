source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'unicorn', '~>4.4.0'
gem 'unicorn-rails'

gem 'devise'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#Form/Validation
gem 'simple_form'
gem 'validates_timeliness'

#Decorators for models
gem 'draper', '~>0.18.0'

#Pagination for models
gem 'kaminari'
gem 'kaminari-bootstrap'

# Environment specific constants
gem 'rails_config'

# Email
gem 'sanitize_email'

#ics support
gem 'icalendar'

# Monitoring
gem 'newrelic_rpm'

group :development, :test, :build do
  gem 'sqlite3'
end

group :development, :test, :test_one, :qa, :staging do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'brakeman'
  gem 'guard-rails'
end

group :test, :test_one, :qa, :staging do
  gem 'shoulda-matchers'
  gem 'capybara', '~> 1.1.3'
  gem 'capybara-webkit'
  gem 'capybara-screenshot', '~> 0.3.0'
  gem 'spork-rails'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rb-fsevent', '~> 0.9.1'
  # Specific version required for BSD
  gem 'sys-proctable', '0.9.1', :git => 'https://github.com/djberg96/sys-proctable.git', :branch => 'sys-proctable-0.9.1'
  gem 'fuubar'
end

gem 'simplecov', :require => false, group: :test

group :assets do
  gem 'sass-rails'
  # Special version fixed by Kevin
  gem 'bootstrap-sass'
  gem 'compass-rails'
  gem 'font-awesome-sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'jquery-rails', '~> 2.2.1'
end

gem 'debugger', group: [:development, :test]

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

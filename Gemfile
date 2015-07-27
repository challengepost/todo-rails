source 'https://rubygems.org'

ruby '2.1.6'

gem 'rails', '~> 4.2'

# Web
# gem 'unicorn'
# gem 'puma'
# gem 'rails_12factor' # required for heroku applications
gem 'thin'

gem 'sqlite3'

# Assets
gem "reimagine2", git: "git@github.com:challengepost/reimagine.git", branch: "master"

gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails'
gem 'rack-cors', require: 'rack/cors'
gem 'sass-rails', '~> 4.0.0'
gem 'smusher', require: false
gem 'uglifier', '>= 1.3.0'

# Authentication
gem 'cancan'
gem 'devise'

# Views
gem 'kaminari'
gem 'simple_form'

# Attachments
gem 'carrierwave'
gem 'carrierwave_backgrounder'
gem 'fog', '>= 1.3.1'
gem 'mini_magick'

# Background
gem 'sidekiq'
gem 'sinatra' # for sidekiq ui

# Use jQuery as the JavaScript library
gem 'jquery-rails'

# Monitoring/System
gem 'figleaf'

# Tracking
gem 'mixpanel'

# Models
gem 'email_validator'
gem 'ancestry'

group :development, :test do
  gem 'factory_girl_rails', '~> 4.0'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'steak'
  gem 'timecop'

  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-remote'
end

group :development do
  # gem 'rack-livereload'
  gem 'foreman'
  gem 'guard-livereload'
  gem 'rename' # renames your app you can remove after use
end

gem 'whenever', require: false

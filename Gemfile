source 'https://rubygems.org'
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
gem 'pg', '~> 0.18'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
gem 'thin'

gem 'puma'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

gem "font-awesome-rails"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
gem 'react-rails', '~> 1.6.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'devise'
gem 'cancan'
gem 'awesome_print'
gem 'slim-rails'
gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'sinatra' # For sidekiq web
gem 'fabrication'
gem 'figaro'
gem 'jquery-turbolinks'
gem 'counter_culture'
gem 'omniauth'
gem 'omniauth-oauth2'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-twitter'
#gem 'nexmo'
#gem 'pusher'
gem "sentry-raven"
gem 'whenever', '~> 0.9.4' # used for periodic tasks like reminders
gem 'faraday', '~> 0.9.1' # for external web requests
gem 'lightbox2-rails' # for viewing images bigger in popups

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'quiet_assets'
  gem "guard-bundler", ">= 1.0.0"
  gem "guard-cucumber", ">= 1.4.0"
  gem "guard-rails", ">= 0.4.0"
  gem "guard-rspec", ">= 2.5.2"
  gem 'guard-zeus-client'
  gem "rb-inotify", ">= 0.9.7", require: false
  gem "rb-fsevent", ">= 0.9.3"
  gem "rb-fchange", ">= 0.0.6", require: false
  gem "better_errors", ">= 0.7.2"
  gem "binding_of_caller", ">= 0.7.1", platforms: [:mri_19, :rbx]
  gem "letter_opener"
  #For windows
  gem 'coffee-script-source', '1.8.0'
  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'bcrypt'
end

group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'rails_12factor'
end

group :test, :development do
  gem "rspec-rails", ">= 2.12.2"
  gem 'rspec-activejob', '~> 0.4.1'
  gem "pry"
  gem "pry-rails"
  gem "pry-byebug" #debugger -> byebug
  gem "guard"
  gem 'guard-zeus'
end

group :test do
  #gem "database_cleaner", ">= 1.0.0.RC1"
  #gem "email_spec", ">= 1.4.0"
  #gem "cucumber-rails", require: false
  gem "launchy"
  gem 'shoulda-matchers', require: false
  gem 'timecop'
  gem 'faker'
  gem 'webmock'
end

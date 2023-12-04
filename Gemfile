source 'https://rubygems.org'

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.1.2'

gem 'rack', '~> 2.2.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '>= 4.0.1'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

# A Ruby binding to the Ed25519 elliptic curve public-key signature system described in RFC 8032.
gem 'ed25519'

# This gem implements bcrypt_pbkdf (a variant of PBKDF2 with bcrypt-based PRF)
gem 'bcrypt_pbkdf'

# for passwords in .env.production file
gem 'dotenv-rails'

# GraphQL is a query language for APIs
gem 'graphql'
gem 'graphiql-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem

  gem 'debug', platforms: %i[mri windows]

  # RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter.
  gem 'rubocop', require: false

  # JSLint on Rails is a Ruby library which lets you run the JSLint JavaScript code checker
  gem 'jslint_on_rails'

  gem 'net-smtp', require: false
  gem 'net-imap', require: false
  gem 'net-pop', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem 'spring'

  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-nginx'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano-upload-config'
  gem 'sshkit-sudo'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'

  # rspec-rails brings the RSpec testing framework to Ruby on Rails as testing framework, Minitest.
  gem 'rspec-rails'

  # Record your test suite's HTTP interactions and replay them during future test.
  gem 'vcr'

  # Library for stubbing and setting expectations on HTTP requests in Ruby.
  gem 'webmock'
end

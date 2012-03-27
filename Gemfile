source "https://rubygems.org"

gem "rails", "3.2.2"

gem "capistrano"
gem "devise", "~> 2.0.4"
gem "haml-rails"
gem "jquery-rails"
gem "omniauth-github", "~> 1.0.1"
gem "simple_form"

group :assets do
  gem "bootstrap-sass", "~> 2.0.1"
  gem "coffee-rails",   "~> 3.2.1"
  gem "compass-rails"
  gem "sass-rails",     "~> 3.2.3"
  gem "therubyracer"
  gem "uglifier",       ">= 1.0.3"
end

group :production do
  gem "mysql2"
  gem "pg"
end

group :development, :test do
  gem "rspec-rails",    "~> 2.8"
  gem "steak",          "~> 2.0"
  gem "factory_girl_rails"
  gem "database_cleaner"
  gem "shoulda-matchers"
end

group :test do
  gem "autotest-standalone"
  gem "autotest-growl"
  gem "autotest-fsevent"
  gem "simplecov", require: false
end

group :development do
  gem "sqlite3"
  gem "thin"
end

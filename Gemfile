require 'em/pure_ruby'

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootsnap', require: false
gem 'jbuilder'
gem 'puma'
gem 'rails'
gem 'sass-rails'
gem 'turbolinks'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'webpacker'

group :production do
  gem 'mysql2'
end

group :development, :test do
  gem 'annotate'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry'
  gem 'pry-rails'
  gem 'sqlite3'
  gem 'yard'
end

group :development do
  gem 'guard'
  gem 'guard-brakeman', require: false
  gem 'guard-bundler', require: false
  gem 'guard-bundler-audit', require: false
  gem 'guard-cucumber', require: false
  gem 'guard-migrate', require: false
  gem 'guard-minitest', require: false
  gem 'guard-yard', require:false
  gem 'web-console'
  if Gem.win_platform?
    gem 'wdm'
    gem 'win32console'
  end
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner', require: false
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'webdrivers'
end

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 4.3'
# gem 'sass-rails', '~> 5.0'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'binding_of_caller'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'bootstrap', '~> 4.3.1'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'devise'
gem 'haml-rails'
gem 'high_voltage'

gem 'simple_form'
gem 'country_select'
gem "cocoon"

group :development do
  gem 'better_errors'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'database_cleaner'
  gem 'launchy'
end

gem 'remote_table'

ruby '2.6.3'

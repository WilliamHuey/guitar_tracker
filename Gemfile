source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem "thin", "~> 1.5.1"
gem 'jquery-rails'

gem 'haml', '4.0.2'
gem 'haml-rails', '0.4'

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'
  gem "therubyracer", "0.11.4"
  gem 'uglifier', '~> 2.0.1'
end

group :development, :test do
  gem 'sqlite3'
  gem 'spork', '0.9.2'
  gem "rspec-rails", "2.13.0"
  gem 'guard-rspec', '2.5.2'
  gem "guard-spork", "~> 1.5.0"
  gem 'rb-inotify', '~> 0.9'
end

group :test do
  gem "shoulda-matchers", "~> 2.0.0"
  gem 'capybara', '2.1.0'
end

group :production do
  gem 'pg', '0.14.1'
end


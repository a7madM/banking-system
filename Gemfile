source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.4'

gem 'passenger', '~> 6.0.6'

gem 'pg', '~> 1.1'

gem 'jbuilder', '~> 2.11'

gem 'bootsnap', '>= 1.4.4', require: false


group :development, :test do
  gem 'brakeman'
  gem 'byebug'
  gem 'factory_bot_rails', '~> 6.1.0'
  gem 'faker', '~> 2.18.0'
  gem 'ffaker', '~> 2.18'
  gem 'rails-controller-testing', '~> 1.0.5'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'rubocop', '~> 1.18'
  gem 'rubocop-rails', '~> 2.9.1'
  gem 'rubocop-rspec', '~> 2.4.0'
  gem 'shoulda-matchers', '~> 4.5.1'
  gem 'simplecov'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.3'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'database_cleaner-active_record'
end

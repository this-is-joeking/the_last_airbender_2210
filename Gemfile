# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.7.4'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'faraday'
gem 'figaro'
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.8'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'simplecov', require: false
  gem 'webmock'
  # gem 'vcr'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

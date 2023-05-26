source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'rails', '~> 7.0.4', '>= 7.0.4.3'
gem 'propshaft', '~> 0.7.0'
gem 'puma', '~> 6.2', '>= 6.2.1'
gem 'pg', '~> 1.5', '>= 1.5.3'
gem 'jsbundling-rails', '~> 1.1', '>= 1.1.1'
gem 'turbo-rails', '~> 1.4'
gem 'stimulus-rails', '~> 1.2', '>= 1.2.1'
gem 'cssbundling-rails', '~> 1.1', '>= 1.1.2'
gem 'jbuilder', '~> 2.11', '>= 2.11.5'
gem 'redis', '~> 5.0', '>= 5.0.6'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false
gem 'haml-rails', '~> 2.1'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec', '~> 3.12'
  gem 'pry', '~> 0.14.2'
end

group :development do
  gem 'web-console', '~> 4.2'
end

group :test do
  gem 'capybara', '~> 3.39'
  gem 'selenium-webdriver', '~> 4.8', '>= 4.8.6'
  gem 'webdrivers', '~> 5.2'
end

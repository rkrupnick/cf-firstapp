source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.0'
# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails', 				'~> 3.3.0'
	gem 'factory_girl_rails', '~> 4.0'
	gem 'capybara',						'~> 2.4.0'
	gem 'stripe-ruby-mock', 	'~> 2.2.1', :require => 'stripe_mock'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
 gem 'byebug', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

group :production do
	gem 'rails_12factor'
	gem 'pg'
end

group :development do
	gem 'guard'
	gem 'guard-rspec', require: false
	gem 'guard-spork'
end

gem 'devise'
gem 'cancancan'
gem 'will_paginate'
gem 'spork-rails'
gem 'stripe'
gem 'brakeman', require: false
gem 'angularjs-rails'
gem 'dalli'
gem 'redis-rails'
gem 'newrelic_rpm'
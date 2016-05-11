source 'https://rubygems.org'

gem 'rails', '4.2.2'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma'
gem 'puma_worker_killer'
gem "figaro"
gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: '0-10-stable'

group :production do
  gem 'pg', '~> 0.18.3'
  gem 'rails_12factor', '0.0.2'
end

group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'pry'
  gem 'pry-remote'
end

group :test do 
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end


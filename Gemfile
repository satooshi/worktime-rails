source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# rails gems
gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 5.2.2'

# rails optional gems
# gem 'capistrano-rails', group: :development # Use Capistrano for deployment
# gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'mini_magick', '~> 4.8' # Use ActiveStorage variant
# gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production
# gem 'web-console', '>= 3.3.0', group: :development # Access an interactive console on exception pages or by calling 'console' anywhere in the code.

# project gems
gem 'devise'
gem 'devise-bootstrap-views'
gem 'devise_invitable'

# adtive admin gems
gem 'activeadmin'
gem 'execjs'
gem 'therubyracer'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-remote'
  # gem 'pry-stack_explorer'
end

group :development do
  gem 'activerecord-cause'
  gem 'annotate'
  gem 'bullet'
  gem 'guard-rspec', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-i18n'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'sorbet'
  gem 'sorbet-runtime'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # gem 'deep-cover', require: false
  gem 'rspec'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'test-prof', require: false # enable let_it_be
end

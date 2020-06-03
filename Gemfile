source 'https://rubygems.org'
git_source(:github) {|repo| "https://github.com/#{repo}.git"}

ruby '2.5.5'

gem 'rails', '~> 5.2.4.3'
gem 'puma', '>= 4.3.5'

gem 'jquery-rails'
gem 'coffee-script', '~> 2.4', '>= 2.4.1'
gem 'twitter-bootstrap-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'lightbox-bootstrap-rails', '5.1.0.1'

gem 'devise', '~> 4.7.1'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'carrierwave', '~> 1.3', '>= 1.3.1'
gem 'rmagick'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5.2'
gem "nokogiri", ">= 1.10.8"

group :development, :test do
  gem 'sqlite3', '< 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'capistrano', '~> 3.13.0'
  gem 'capistrano-rails', '~> 1.4.0'
  gem 'capistrano-passenger', '~> 0.2'
  gem 'capistrano-rbenv', '~> 2.1.6'
  gem 'capistrano-bundler', '~> 1.6.0'

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :production do
  gem 'pg'
  gem 'fog-aws'
end

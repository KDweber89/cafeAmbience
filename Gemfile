source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby ENV["CUSTOM_RUBY_VERSION"] || "2.3.1"

gem 'rb-readline'

gem 'pry-rails', :group => :development
gem 'pgreset'
gem "paperclip", "~> 5.0.0"
gem 'rails', '~> 5.1.1'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'bcrypt', '~> 3.1.7'
gem 'haml', '~> 4.0.5'
gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'
gem 'font-awesome-rails'
gem 'capistrano-rails', group: :development
gem 'erubis', '~> 2.7'
gem 'simple_form'
gem 'devise'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'webrick', '~> 1.3', '>= 1.3.1'
gem 'date_validator', '~> 0.9.0'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

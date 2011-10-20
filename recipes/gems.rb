msg "Install gems"

get "#{@resources_path}/Gemfile", "Gemfile", :force => true

gem 'haml'
gem 'haml-rails'
gem 'simple_form', '~> 1.5.2'

gem 'devise', '~> 1.4.9'
gem 'cancan', '~> 1.6.7'
gem 'lolita', '~> 3.2.rc.5'
gem 'exception_notification', '~> 2.5.2'
gem 'jquery-rails', '~> 1.0.16'
gem 'therubyracer'


gem 'sass-rails', '~> 3.1.0', :group => :assets
gem 'coffee-rails', '~> 3.1.0', :group => :assets
gem 'uglifier', '~> 1.0.4', :group => :assets


gem 'rspec-rails', '~> 2.6.1', :group => [:development, :test]
gem 'database_cleaner', '~> 0.6.7', :group => [:development, :test]
gem 'fabrication', '~> 1.1.0', :group => [:development, :test]
gem 'capybara', '~> 1.1.1', :group => [:development, :test]
gem 'capybara-webkit', '~> 0.7.2', :group => [:development, :test]
gem 'ruby-debug19', :group => [:development, :test]


run "#{@rvm} gem install bundler --no-ri --no-rdoc"
run "#{@rvm} exec bundle install"
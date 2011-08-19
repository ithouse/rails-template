msg "Install gems"

get "#{@resources_path}/Gemfile", "Gemfile", :force => true

# Haml
gem 'haml'
gem 'haml-rails'

# rspec
gem 'rspec', '~> 2.6.0',            :group => :test
gem 'rspec-rails', '~> 2.6.1',      :group => :test
gem 'database_cleaner', '~> 0.6.7', :group => :test
gem 'fabrication', '~> 1.0.1',      :group => :test

# cucumber
gem 'cucumber', '~> 1.0.2',         :group => :test
gem 'cucumber-rails', '~> 1.0.2',   :group => :test
gem 'capybara', '~> 1.0',           :group => :test
gem 'launchy', '~> 2.0.5',           :group => :test

# lolita
#gem "devise", "~> 1.4.2"
gem "lolita", "~> 3.1.13"

# compass
gem "compass", "~> 0.11.5"

# simple form
gem "simple_form", "~> 1.4.2"

run "#{@rvm} gem install bundler --no-ri --no-rdoc"
run "#{@rvm} exec bundle install"
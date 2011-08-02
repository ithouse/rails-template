msg "Install gems"

get "#{@resources_path}/Gemfile", "Gemfile", :force => true

# Haml
gem 'haml'
gem 'haml-rails'

# rspec
gem 'rspec', '~> 2.6.0',            :group => :test
gem 'rspec-rails', '~> 2.6.1',      :group => :test
gem 'database_cleaner', '~> 0.6.7', :group => :test

# cucumber
gem 'cucumber',         :group => :test
gem 'cucumber-rails',   :group => :test
gem 'capybara',         :group => :test
gem 'launchy',          :group => :test

# lolita
gem "lolita", "~>3.1.12"

# compass
gem "compass", "~> 0.11.5"


run "bundle install"
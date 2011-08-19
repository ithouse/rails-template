msg "Setup compass..."

get "#{@resources_path}/compass.rb", "config/compass.rb", :force => true

run "#{@rvm} exec compass init rails -c config/compass.rb --force > /dev/null"
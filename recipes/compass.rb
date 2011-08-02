msg "Setup compass..."

get "#{@resources_path}/compass.rb", "config/compass.rb", :force => true
run "compass init rails --syntax sass -c config/compass.rb --force > /dev/null"
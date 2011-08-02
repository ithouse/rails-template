msg "Setup compass..."

get "#{@resources_path}/compass.rb", "config/compass.rb", :force => true

if no?("Use blueprint? (yes/no)")
  run "#{@rvm} exec compass init rails --using blueprint -c config/compass.rb --force > /dev/null"
else
  run "#{@rvm} exec compass init rails -c config/compass.rb --force > /dev/null"
end
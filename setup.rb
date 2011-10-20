# Rails 3 template with Lolita

require "rails"

@recipes_path = File.join(File.dirname(__FILE__),"recipes")
@resources_path = File.join(File.dirname(__FILE__),"resources")

require "#{@resources_path}/colored.rb"

def msg text
  puts "\n    => #{text}".yellow
end

puts "\n========================================================"
puts " Setup Rails 3 with Lolita template...".green.bold
puts "========================================================\n\n"

%w{cleanup app rvm gems git haml jquery simple_form rspec lolita database}.each do |name|
  apply "#{@recipes_path}/#{name}.rb"
end

puts "\n========================================================"
puts " Setup finished".green.bold
puts "========================================================\n"
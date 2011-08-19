# Rails 3 template with Lolita

unless Gem.available?("colored")
  run "gem install colored --no-rdoc --no-ri"
  Gem.refresh
  Gem.activate(name)
end

require "rails"
require "colored"

@recipes_path = File.join(File.dirname(__FILE__),"recipes")
@resources_path = File.join(File.dirname(__FILE__),"resources")

def msg text
  puts "\n    => #{text}".yellow
end

puts "\n========================================================"
puts " Setup Rails 3 with Lolita template...".green.bold
puts "========================================================\n\n"

%w{cleanup app rvm gems git haml jquery compass simple_form rspec cucumber lolita database}.each do |name|
  apply "#{@recipes_path}/#{name}.rb"
end

puts "\n========================================================"
puts " Setup finished".green.bold
puts "========================================================\n"
# Rails 3 template with Lolita

%w{bundler colored}.each do |name|
  unless Gem.available?(name)
    run "gem install #{name} --no-rdoc --no-ri"
    Gem.refresh
    Gem.activate(name)
  end
end

require "rails"
require "colored"
require "bundler"

@root_path = File.expand_path(File.dirname(__FILE__))
@recipes_path = File.join(@root_path,"recipes")
@resources_path = File.join(@root_path,"resources")

def msg text
  puts "\n    => #{text}".yellow
end

puts "\n========================================================"
puts " Setup Rails 3 with Lolita template...".green.bold
puts "========================================================\n\n"

%w{cleanup app rvm gems git haml jquery compass rspec cucumber lolita database}.each do |name|
  apply "#{@recipes_path}/#{name}.rb"
end

puts "\n========================================================"
puts " Setup finished".green.bold
puts "========================================================\n"
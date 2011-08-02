# Rspec
msg "Install rspec..."
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.test_framework :rspec, :views => false, :fixture => true\n" + 
  (" " * 6) + "generator.fixture_replacement :fabrication\n"
end

run "#{@rvm} exec rails g rspec:install"
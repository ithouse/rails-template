# Rspec
msg "Install rspec..."
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.test_framework :rspec, :views => false\n"
end

generate "rspec:install"
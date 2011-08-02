msg "Setting HAML as template language..."
application do
  (" " * 2) + "config.generators do |generator|\n" +
  (" " * 4) + "end\n"
end
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.template_engine :haml\n"
end

create_file "config/initializers/haml.rb" do
  <<-HAML
  Haml::Template.options[:attr_wrapper] = '\"'
  Haml::Template.options[:format] = :xhtml
  Sass::Plugin.options[:style] = :expanded
  HAML
end
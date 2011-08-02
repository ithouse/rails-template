msg "Add jquery..."
inside "public/javascripts" do
  remove_file 'controls.js'
  remove_file 'dragdrop.js'
  remove_file 'effects.js'
  remove_file 'prototype.js'
  remove_file 'rails.js'

  get "https://github.com/rails/jquery-ujs/raw/master/src/rails.js", "rails.js", :force => true
  get "http://code.jquery.com/jquery-1.6.2.min.js", "jquery/jquery.min.js", :force => true
end

application do
  "\n    config.action_view.javascript_expansions[:defaults] = %w(jquery/jquery.min modernizr-1.7.min rails)\n"
end

gsub_file "config/application.rb", /# JavaScript.*\n/, ""
gsub_file "config/application.rb", /# config\.action_view\.javascript.*\n/, ""
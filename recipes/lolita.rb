# Lolita
msg "Install Lolita..."
run "#{@rvm} exec rails g lolita:install"

# Devise for user authentication
#gsub_file 'config/initializers/lolita.rb', /config.user_classes << User/, "config.user_classes << Admin"
#run "#{@rvm} exec rails g devise:install"
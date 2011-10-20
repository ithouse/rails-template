# Rvm

msg "RVM setup..."

current_ruby = `rvm-prompt`.strip
desired_ruby = ask("\nWhich RVM Ruby would you like to use? [#{current_ruby}]")
desired_ruby = current_ruby if desired_ruby.blank?

gemset_name = ask("What name should the custom gemset have? [#{@app_name}]")
gemset_name = @app_name if gemset_name.blank?

# Create the gemset
run "rvm #{desired_ruby} gemset create #{gemset_name}"

# Let us run shell commands inside our new gemset. Use this in other template partials.
@rvm = "rvm use #{desired_ruby}@#{gemset_name}"

# Create .rvmrc
file '.rvmrc', @rvm

# Make the .rvmrc trusted
run "rvm rvmrc trust #{@app_path}"
msg "Database setup..."

get "#{@resources_path}/database.yml", "config/database.yml", :force => true

username = ask("DB username:")
password = ask("DB password:")

gsub_file 'config/database.yml', /username:/, "username: #{username}"
gsub_file 'config/database.yml', /password:/, "password: #{password}"
gsub_file 'config/database.yml', /project_development/, "#{@app_name}_development"
gsub_file 'config/database.yml', /project_test/, "#{@app_name}_test"
gsub_file 'config/database.yml', /project_production/, "#{@app_name}_production"

if yes?("\nCreate database? (yes/no)")
  run "bundle exec rake db:create"
  run "bundle exec rake db:test:clone"
end
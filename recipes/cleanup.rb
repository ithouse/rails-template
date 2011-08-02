msg "Removing unnecessary files ... "

remove_file "README"
remove_file "doc/"
remove_file "test/"

inside "public" do
  remove_file "index.html"
  remove_file "images/rails.png"
  remove_file "favicon.ico"
end

msg "Default layout uses HAML"
inside "app/views/layouts" do
  remove_file "application.html.erb"
  get "#{@resources_path}/application.html.haml", "application.html.haml"
end
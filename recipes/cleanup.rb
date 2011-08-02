msg "Removing unnecessary files ... "

remove_file "README"
remove_file "doc/"
remove_file "test/"

inside "public" do
  remove_file "index.html"
  remove_file "images/rails.png"
  remove_file "favicon.ico"
end
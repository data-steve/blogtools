serve <- function(blog_dir = "/Users/ssimpson/Documents/repos/data-steve.github.io"){
  
  wd <- getwd()
  if (wd!=blog_dir){
    setwd(blog_dir)
  }
  system("bundle exec jekyll serve")
  setwd(wd)
}
system("\003")
build <- function(blog_dir = "/Users/ssimpson/Documents/repos/data-steve.github.io"){
  
   wd <- getwd()
   if (wd!=blog_dir){
     setwd(blog_dir)
   }
   system("bundle exec jekyll build")
   setwd(wd)
}
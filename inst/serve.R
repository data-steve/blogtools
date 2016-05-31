#' Title
#'
#' Description
#'
#' @return
#' @references
#' @keywords
#' @export
#' @seealso
#' @examples

serve <- function(blog_dir = "/Users/ssimpson/Documents/repos/data-steve.github.io"){

  wd <- getwd()
  if (wd!=blog_dir){
    setwd(blog_dir)
  }
  system("bundle exec jekyll serve")
  setwd(wd)
}

#' Creates a New Post in Jekyll-based Markdown
#'
#' Creates a New Post in Jekyll-based Markdown
#'
#' @param title       Title of new post
#' @param titlecase   Whether title should be in titlecase
#' @param date        Date, default is Sys.Date + 1
#' @param folder      folder for storing drafts
#' @export
#' @examples
#' \dontrun{
#' new_post("the end of the year", date = "2016-12-31")
#' }
new_post <- function(title, titlecase=TRUE, date = as.character(Sys.Date()), folder = "./_posts/"){
  # check wkdir
  if(!grepl("github.",getwd())) stop("You need to change wkdir to github.io folder")

  # this requires the safety that I separately move files
  # from _backlog into _posts
  subfolder <- folder

  # front matter
  yml <-  c("---","layout: post"
            , paste0("title: ", ifelse(titlecase, tools::toTitleCase(title), title))
            , "tags: []", "---")

  # build file name to work with Jekyll format
  file_name <- paste0(paste0(c(date,   # set date always 1 day into future
                               gsub(" ", "-",
                                    gsub("\\s+"," ",
                                         gsub("-"," ",  # handle hypthens in the title
                                              tolower(trimws(title)))
                                    )) ), collapse="-") ,".md")

  # create file
  writeLines(yml,
             con= file.path(paste0(subfolder,file_name)))

  # open file for editing
  file.edit(file.path(paste0(subfolder,file_name)))
}



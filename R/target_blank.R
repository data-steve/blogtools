#' Generate Target Blank <a>
#'
#' Generate Target Blank <a>.
#'
#' @param text text
#' @param href link
#' @export
#' @examples target_blank("Google Search", "https://www.google.com/")
target_blank <- function(text, href){
  p <- paste0("<a href='",href,"' target='_blank'>", text,"</a>")
  clipr::clear_clip()
  clipr::write_clip(p)
  print(p)
}


#' Create Script to Embed Gist
#'
#' Create Script to Embed Gist.
#'
#' @param url the gist url
#' @export
#' @examples
#' gist("https://gist.github.com/nisrulz/11c0d63428b108f10c83")
gist <- function(url){
  g <- paste0('<script src="'
              , url
              ,'.js"></script>')
  clipr::write_clip(g)
  cat(g)
}

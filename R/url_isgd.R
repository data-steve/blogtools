#' Shortens or Expands URLs
#'
#' Shortens or Expands URLs. It uses the is.gd API : https://is.gd/.
#' Once URL has been shortened initially, same shortened url is returned
#'
#' @param url url to be shortened or expanded
#' @param shrtn T/F whether to shorten or expand
#' @export
#' @examples
#' url_isgd("http://andrewgelman.com/2016/03/22/text-sentiment-visualizer/")

url_isgd <- function(url, shrtn=TRUE){
  if (shrtn) {
    urlshorteneR::isgd_LinksShorten(url)
  } else {
    urlshorteneR::isgd_LinksExpand(url)
    }
}

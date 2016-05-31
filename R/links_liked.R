#' Create HTML for Links I Liked Posts
#'
#' Create HTML for Links I Liked Posts.
#'
#' @param text text to be shown over hyperlink
#' @param url  url for link
#' @param shrtn TRUE/FALSE whether to shorten url
#' @param hashtags single string of hashtags quoted and comma-separated
#' @param acct twitter acct
#' @param script T/F for whether to include twitter script
#' @export
#' @examples
#' links_liked(text = "Using d3 to 'discover' koala's in nature"
#'             , url = "http://www.koalastothemax.com/"
#'             , shrtn=TRUE
#'             , hashtags="d3js,koalafield,WWF")
links_liked <- function( text,url, shrtn=FALSE, hashtags=NULL,  acct="data_steve", script=FALSE){

  twt <- paste0('<a href="https://twitter.com/share" class="twitter-share-button" data-via="' ,acct
                , '" data-url="', ifelse(shrtn,urlshorteneR::isgd_LinksShorten(url),url)
                , '" data-text="', text
                , ifelse(is.null(hashtags),"",paste0('" data-hashtags="' , hashtags))
                , '" data-dnt="true">Tweet</a>'
                , ifelse(script,"<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>",""))
  listing <- paste0(twt," [",text,"](",gsub("\"|\'","",url),"){:target='_blank'}")
  clipr::write_clip(listing)
  cat(listing)
}


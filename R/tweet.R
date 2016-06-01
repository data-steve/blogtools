#' Interactively Create Button to Embed Tweets
#'
#' Interactively Create Button to Embed Tweets.
#'
#' @param acct twitter acct
#' @param hashtags tags to include in tweet
#' @param size size of button
#' @export
#' @examples
#' \dontrun{
#' tweet("rstats, DataScience")
#' }
tweet <- function(hashtags, acct="data_steve", size="large"){
  twt <- paste0('<a href="https://twitter.com/share" class="twitter-share-button" data-via="' ,acct
                , '" data-size="', size,
                '" data-hashtags="' , hashtags
                , '" data-dnt="true">Tweet</a>')
  clipr::write_clip(twt)
  cat(twt)
}

# I've put this script into my script.html file
# so don't really need it in main function
#' Button to Embed Tweets
#'
#' Button to Embed Tweets.
#'
tweet_script <- function() {
  s <- "<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>"
  clipr::write_clip(s)
  cat(s)
}




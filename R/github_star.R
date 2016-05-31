#' Interactively Create Github Buttons
#'
#' Interactively Create Github Buttons.
#'
#' @param repo github repo
#' @param acct github acct
#' @param size button size
#' @param script include github-button.js or not
#' @export
#' @examples
#' \dontrun{
#' github_star("blogtools", "data-steve")
#' }
github_star <- function(repo, acct="data-steve", size="mega",script=FALSE){
  star <- paste0('<a class="github-button" '
                 , 'href="https://github.com/'
                 , acct,"/",repo
                 ,' data-icon="octicon-star"'
                 ,' data-style="', size
                 ,'">',repo,'</a>',
                 ifelse(script,'<script async defer src="https://buttons.github.io/buttons.js"></script>',"" ))
  clipr::write_clip(star)
  cat(star)
}

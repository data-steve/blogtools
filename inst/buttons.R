#' Interactively Create Buttons
#'
#' Interactively Create Buttons.
#'
#' @export
#' @examples
#' \dontrun{
#' github_star("blogtools", "data-steve")
#' }
github_star <- function(pkg, acct="data-steve", size="mega",script=FALSE){
  star <- paste0('<a class="github-button" '
                , 'href="https://github.com/'
                , acct,"/",pkg
                ,' data-icon="octicon-star"'
                ,' data-style="', size
                ,'">',pkg,'</a>',
                ifelse(script,'<script async defer src="https://buttons.github.io/buttons.js"></script>',"" ))
  clipr::write_clip(star)
  cat(star)
}

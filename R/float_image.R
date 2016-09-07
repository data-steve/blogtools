#' Produces HTML <div> Tag For Float Images
#'
#' Produces HTML <div> Tag For Float Images.
#'
#' @param src source
#' @param float float direction
#' @param width width of image
#' @export
#' @examples float_image("/images/googleformr_logo.png")
float_image <-
function (src = NULL, float = "right", width = "200") {
    div <- paste0("<div style=\"float:", float, "; margin:10px;\">\n",
        "\t<img src=\"", src, "\" width=\"200\">\n", "</div>")
    cat(div)
    clipr::write_clip(div)
}


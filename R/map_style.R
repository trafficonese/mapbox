mapboxStyleDependency <- function() {
  list(
    createHtmlDependency(
      name = "style",
      version = "1.0.0",
      src = system.file("htmlwidgets/lib/style", package = "mapbox"),
      script = c("style.js"),
      all_files = FALSE
    )
  )
}


#' Add Style
#'
#' @param map A map widget object
#' @param style The style to add
#'
#' @seealso \code{\link{mapbox_style}}
#'
#' @examples
#' \donttest{
#' token <- "MAPBOX_TOKEN"
#'
#' mapbox(token = token) %>%
#'   add_style(style = mapbox_style(5))
#' }
#' @export
add_style <- function( map, style ) {

  map <- addDependency(
    map, mapboxStyleDependency()
  )

  invoke_method(
    map, "mb_add_style", style
  )
}

#' @export
#' @import htmlwidgets
#' @import htmltools
slickCarousel <- function(..., width = NULL, height = NULL){
  params <- list(...)
  params$width = width; params$height = height
  structure(params, class = c('slickCarousel', 'htmlwidget'))
}


#' @export
widget_div.slickCarousel <- function(x, id, style, class){
  tags$div(id = id, class = paste('slider', class), style = style,
    lapply(x$content, tags$div, class='blue')
  )
}

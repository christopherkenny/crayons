#' Crayon Color Scales for `ggplot2`
#'
#' @param palette TODO
#' @param which TODO
#' @param ... arguments passed on to [ggplot2::discrete_scale()
#' @param reverse TODO
#'
#' @examples
#' library(ggplot2)
#' #TODO
#'
#' @rdname scale_crayons
#' @export
scale_color_crayons <- function(palette = 'standard16', which = NULL, ...,
                                reverse = FALSE) {
  pal <- crayons[[palette]]
  if (!is.null(which)) {
    pal <- pal[which]
  }
  if (reverse) {
    pal <- rev(pal)
  }
  ggplot2::discrete_scale(aesthetics = 'color', scale_name = palette,
                          palette = rot_pal(pal), ...)
}

#' @rdname scale_crayons
#' @export
scale_fill_crayons <- function(palette = 'standard16', which = NULL, ...,
                                reverse = FALSE) {
  pal <- crayons[[palette]]
  if (!is.null(which)) {
    pal <- pal[which]
  }
  if (reverse) {
    pal <- rev(pal)
  }
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = palette,
                          palette = rot_pal(pal))
}

#' @rdname scale_crayons
#' @export
scale_colour_crayons = scale_color_crayons

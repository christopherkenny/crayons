#' Crayon Color Scales for `ggplot2`
#'
#' @param palette palette from `names(crayons)` to use
#' @param which numeric indices of colors to use. `NULL` by default.
#' @param ... arguments passed on to `ggplot2::discrete_scale()`
#' @param reverse Should the vector be reversed? Default is `FALSE`.
#'
#' @return A [ggplot2::Scale]
#'
#' @examples
#' library(ggplot2)
#' ggplot2::mpg |>
#'   ggplot() +
#'    geom_point(aes(displ, hwy, colour = class)) +
#'    scale_color_crayons(palette = 'original')
#'
#' ggplot2::mpg |>
#'   ggplot() +
#'    geom_point(aes(displ, hwy, fill = class), pch = 23, color = 'transparent') +
#'    scale_fill_crayons(palette = 'original')
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
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = palette, ...,
                          palette = rot_pal(pal))
}

#' @rdname scale_crayons
#' @export
scale_colour_crayons <- scale_color_crayons

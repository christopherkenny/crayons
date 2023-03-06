#' Pick `n` Colors
#'
#' Places each color into RGB space, clusters them with kmeans, and returns the
#' colors nearest each cluster center.
#'
#' @param hex a character vector of hexademical colors
#' @param n the integer number of desired colors
#'
#' @return a character vector of length n
#' @export
#'
#' @examples
#' pick_colors(crayons$standard, 10)
pick_colors <- function(hex, n) {
  rgbs <- hex |>
    grDevices::col2rgb() |>
    t()
  km <- kmeans(rgbs, n)
  mat <- rbind(
    km$centers,
    rgbs
  )
  dists <- mat |>
      stats::dist() |>
      as.matrix()

  idx <- vapply(seq_len(n), function(i) {
    which.min(dists[i, -seq_len(n)])
  }, FUN.VALUE = integer(1L))

  hex[idx]
}

# color_distance <- function(hex) {
#   hex |>
#     grDevices::col2rgb() |>
#     t() |>
#     stats::dist() |>
#     as.matrix()
# }

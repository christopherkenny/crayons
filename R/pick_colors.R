#' Heuristics for Color Distances and Locations
#'
#' * `pick_colors()` places each color into RGB space, clusters them with k-means,
#' and returns the colors nearest each cluster center.
#' * `color_order()` reorders colors so that subsequent colors are far from each other
#' in RGB space.
#' * `color_distance()` calculates pairwise distances in RGB space between colors.
#'
#' @param hex a character vector of hexadecimal colors
#' @param n the integer number of desired colors
#'
#' @return a character vector that is a subset of `hex`, or a
#' matrix of distances for `color_distance()`
#' @export
#'
#' @examples
#' pick_colors(crayons$standard, 10)
#' color_order(crayons$standard)
#' color_distance(crayons$standard[1:4])
pick_colors <- function(hex, n) {
  clss <- class(hex)
  rgbs <- hex |>
    grDevices::col2rgb() |>
    t()
  km <- stats::kmeans(rgbs, n)

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

  out <- hex[idx]
  class(out) <- clss
  out
}

#' @rdname pick_colors
#' @export
color_distance <- function(hex) {
  hex |>
    grDevices::col2rgb() |>
    t() |>
    stats::dist() |>
    as.matrix()
}

#' @rdname pick_colors
#' @export
color_order <- function(hex) {
  dists <- color_distance(hex)

  idx <- integer(length = length(hex))
  vect <- seq_along(idx)
  for (i in seq_along(idx)) {
    if (i == 1) {
      idx[i] <-  1L
      vect <- vect[-1]
    } else {
      cur <- which.max(apply(dists[idx[1:(i - 1L)], -idx[1:(i - 1L)], drop = FALSE], 2, mean))
      idx[i] <- vect[cur]
      vect <- vect[-cur]
    }
  }

  out <- hex[idx]
  boring <- c('#FFFFFF', '#000000')
  if (any(out %in% boring)) {
    out <- c(out[-which(out %in% boring)], out[which(out %in% boring)])
  }

  out
}

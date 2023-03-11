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

color_distance <- function(hex) {
  hex |>
    grDevices::col2rgb() |>
    t() |>
    stats::dist() |>
    as.matrix()
}

color_order <- function(hex) {
  clss <- class(hex)
  dists <- color_distance(hex)

  idx <- integer(length = length(hex))

  mat <- dists
  for (i in seq_along(idx)) {
    sub_dists <- vapply(seq_along(idx), function(j) {
      if (j %in% idx) return(Inf)
      sum(mat[-j, ][, -j])
    }, FUN.VALUE = numeric(1))
    cat(which.min(sub_dists), '\n')

    idx[i] <- which.min(sub_dists)
    mat[i, ] <- 444 # dist white to black = 443.405
    mat[, i] <- 444
  }

  out <- hex[idx]
  class(out) <- clss
  out
}

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
  km <- local({
    set.seed(1)
    stats::kmeans(rgbs, n)
  })

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
  class(out) <- clss
  out
}

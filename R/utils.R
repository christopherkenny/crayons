rot_pal <- function(pal) {
  pal <- unname(pal)
  function(n) {
    if (n <= length(pal)) {
      pick_colors(pal, n)
    } else {
      rep(pal, ceiling(n / length(pal)))[seq_len(n)]
    }
  }
}

print.palette <- function(x, ...) {

}

bocks <- function(r, c) {
  seqr <- seq_len(r) - 1L
  seqc <- seq_len(c) - 1L

  list(
    x = c(vapply(seqr, \(row) rep(row + c(0, 1, 1, 0), times = r), FUN.VALUE = numeric(4 * r))),
    y = c(t(vapply(seqc, \(col) rep(col + c(0, 0, 1, 1), times = c), FUN.VALUE = numeric(4 * c))))
  )
  # needs to be more like 0, 0, 1, 1,     1, 1, 2, 2,     2, 2, 3, 3,     3, 3, 4, 4, ...
}

plot.palette <- function(x, ...) {
  # this is a budget version of `scales::show_col()` in ggplot
  # how many colors
  n <- length(x)

  # convert to square-able
  nc <- ceiling(sqrt(n))
  nr <- ceiling(n / nc)
  x <- c(x, rep(NA_character_, (nr * nc) - n))

  # ggplot it ----
  box <- bocks(nr, nc)
  sq <- data.frame(
    col = rep(x, each = 4),
    x = box$x,
    y = box$y
  )

  ggplot2::ggplot(sq, ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_polygon(ggplot2::aes(fill = col)) +
    ggplot2::geom_text(ggplot2::aes(label = col))
}

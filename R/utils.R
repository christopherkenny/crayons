rot_pal <- function(pal, manual = FALSE) {
  pal <- unname(pal)
  function(n) {
    if (n <= length(pal)) {
      if (manual) {
        pal[seq_len(n)]
      } else {
        pick_colors(pal, n)
      }
    } else {
      rep(pal, ceiling(n / length(pal)))[seq_len(n)]
    }
  }
}

#' @export
print.palette <- function(x, ...) {
  x <- unclass(x)
  print(x)

  if (requireNamespace('cli', quietly = TRUE)) {
    width_console <- getOption('width')
    brks <- 0
    n_char <- 1
    cat('\U0020')
    for (i in seq_along(x)) {
      cat(cli::make_ansi_style(x[[i]], bg = TRUE)('\U0020\U0020\U0020'))
      cat('\U0020')
      n_char <- n_char + 4
      if (n_char > width_console) {
        brks <- brks + 1
        n_char <- 0
        cat('\n\n ')
      }
    }
  }

  invisible(x)
}

bocks <- function(r, c) {
  seqr <- seq_len(r) - 1L
  seqc <- seq_len(c) - 1L

  list(
    x = rep(vapply(seqc, \(row) row + c(0, 1, 1, 0), FUN.VALUE = numeric(4)), r),
    y = c(vapply(seqr, \(col) rep(col + c(0, 0, 1, 1), times = c), FUN.VALUE = numeric(4 * c)))
  )
}

#' @export
#' @importFrom ggplot2 .data
plot.palette <- function(x, ...) {
  # this is my budget version of `scales::show_col()` in ggplot

  n <- length(x)
  x_in <- stats::setNames(x, x)

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

  label_loc <- data.frame(
    col = x,
    x = box$x[seq(1, length(x) * 4, by = 4)] + 0.5,
    y = box$y[seq(1, length(x) * 4, by = 4)] + 0.5
  )
  label_loc$col[is.na(label_loc$col)] <- ''

  if (requireNamespace('farver', quietly = TRUE)) {
    label_loc$color = ifelse(farver::decode_colour(x, to = 'hcl')[, 3] > 50, 'black', 'white')
  } else {
    label_loc$color = 'black'
  }

  ggplot2::ggplot(sq, ggplot2::aes(x = .data$x, y = .data$y)) +
    ggplot2::geom_polygon(ggplot2::aes(fill = col)) +
    ggplot2::geom_text(data = label_loc, ggplot2::aes(label = .data$col, color = .data$color)) +
    ggplot2::guides(fill = 'none', color = 'none') +
    ggplot2::scale_fill_manual(values = x_in, na.value = 'white') +
    ggplot2::scale_color_manual(values = c('black' = 'black', 'white' = 'white')) +
    ggplot2::coord_fixed() +
    ggplot2::theme_void()
}

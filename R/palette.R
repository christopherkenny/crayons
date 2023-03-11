#' @export
print.palette <- function(x, ...) {

  width_console <- getOption('width')
  len <- max(c(9, nchar(names(x)))) + 1L
  n_per <- max(floor(width_console / len), 1)

  i <- 1L
  for (row in seq_len(ceiling(length(x) / n_per))) {
    cat('  ')

    if (!is.null(names(x))) {
      for (co in seq_len(n_per)) {
        if (i + co - 1L <= length(x)) {
          cat(lpad(names(x)[[i + co - 1L]], len))
        }
      }
      cat('\n  ')
    }

    for (co in seq_len(n_per)) {
      if (i + co - 1L <= length(x)) {
        cat(lpad(paste0('"', x[[i + co - 1L]], '"'), len))
      }
    }
    cat('\n')

    if (requireNamespace('cli', quietly = TRUE)) {
      cat('  ')
      for (co in seq_len(n_per)) {
        if (i + co - 1L <= length(x)) {
          cat(lpad('', len - 9))
          cat(cli::make_ansi_style(x[[i + co - 1L]], bg = TRUE)('         '))
        }
      }
      cat('\n')
    }

    i <- i + n_per
  }

  invisible(x)
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

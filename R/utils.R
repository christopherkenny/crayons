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

# poorman's left pad string x to length len
# beware: x needs to be length 1 but this isn't checked
lpad <- function(x, len) {
  paste0(paste0(rep(' ', each = len - nchar(x)), collapse = ''), x)
}

# locate the corners of r x c boxes
bocks <- function(r, c) {
  seqr <- seq_len(r) - 1L
  seqc <- seq_len(c) - 1L

  list(
    x = rep(vapply(seqc, \(row) row + c(0, 1, 1, 0), FUN.VALUE = numeric(4)), r),
    y = c(vapply(seqr, \(col) rep(col + c(0, 0, 1, 1), times = c), FUN.VALUE = numeric(4 * c)))
  )
}

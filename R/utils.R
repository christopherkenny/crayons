rot_pal <- function(pal) {
  function(n) {
    if (n <= length(pal)) {
      pick_colors(pal, n)
    } else {
      rep(pal, ceiling(n / length(pal)))[seq_len(n)]
    }
  }
}

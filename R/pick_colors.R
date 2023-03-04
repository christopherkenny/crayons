# color_distance <- function(hex) {
#   hex |>
#     grDevices::col2rgb() |>
#     t() |>
#     stats::dist() |>
#     as.matrix()
# }

pick_colors <- function(hex, k) {
  rgbs <- hex |>
    grDevices::col2rgb() |>
    t()
  km <- kmeans(rgbs, k)
  mat <- rbind(
    km$centers,
    rgbs
  )
  dists <- mat |>
      stats::dist() |>
      as.matrix()

  idx <- vapply(seq_len(k), function(i) {
    which.max(dists[i, -seq_len(k)])
  }, FUN.VALUE = integer(1L))

  hex[idx]
}

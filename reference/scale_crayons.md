# Crayon Color Scales for `ggplot2`

Crayon Color Scales for `ggplot2`

## Usage

``` r
scale_color_crayons(palette = "standard16", which = NULL, ..., reverse = FALSE)

scale_fill_crayons(palette = "standard16", which = NULL, ..., reverse = FALSE)

scale_colour_crayons(
  palette = "standard16",
  which = NULL,
  ...,
  reverse = FALSE
)
```

## Arguments

- palette:

  palette from `names(crayons)` to use

- which:

  numeric indices of colors to use. `NULL` by default.

- ...:

  arguments passed on to
  [`ggplot2::discrete_scale()`](https://ggplot2.tidyverse.org/reference/discrete_scale.html)

- reverse:

  Should the vector be reversed? Default is `FALSE`.

## Value

A
[ggplot2::Scale](https://ggplot2.tidyverse.org/reference/ggplot2-ggproto.html)

## Examples

``` r
library(ggplot2)
ggplot2::mpg |>
  ggplot() +
   geom_point(aes(displ, hwy, colour = class)) +
   scale_color_crayons(palette = 'original')


ggplot2::mpg |>
  ggplot() +
   geom_point(aes(displ, hwy, fill = class), pch = 23, color = 'transparent') +
   scale_fill_crayons(palette = 'original')

```

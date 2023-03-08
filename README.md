
<!-- README.md is generated from README.Rmd. Please edit that file -->

# crayons

<!-- badges: start -->
<!-- badges: end -->

`crayons` provides crayon-based color palettes. For nostalgic uses,
consider combining with [ggrough](https://github.com/xvrdm/ggrough) or
[roughsf](https://github.com/schochastics/roughsf).

## Installation

You can install the development version of crayons from
[GitHub](https://github.com/) with:

``` r
remotes::install_github('christopherkenny/crayons')
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggplot2)
library(crayons)

mpg |>
  ggplot() + 
  geom_point(aes(displ, hwy, colour = class)) + 
  scale_color_crayons(palette = 'original')
```

<img src="man/figures/README-example-1.png" width="100%" />

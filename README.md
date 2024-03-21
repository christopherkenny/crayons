
<!-- README.md is generated from README.Rmd. Please edit that file -->

# crayons <img src="man/figures/logo.png" align="right" height="138" />

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/crayons)](https://CRAN.R-project.org/package=crayons)
[![crayons status
badge](https://christopherkenny.r-universe.dev/badges/crayons)](https://christopherkenny.r-universe.dev/crayons)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/christopherkenny/crayons/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/christopherkenny/crayons/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`crayons` provides crayon-based color palettes. For nostalgic uses,
consider combining with [ggrough](https://github.com/xvrdm/ggrough) or
[roughsf](https://github.com/schochastics/roughsf).

These palettes are not necessarily (and unlikely to be) color-blind
friendly. For public-facing work, consider a color-blind friendly
package, such as [Cory McCartan’s
wacolors](https://github.com/corymccartan/wacolors).

## Installation

`crayons` is available on CRAN and can be installed using:

``` r
install.packages('crayons')
```

You can also install the development version of crayons from
[GitHub](https://github.com/) with:

``` r
remotes::install_github('christopherkenny/crayons')
```

## Example

`crayons` provides basic ggplot2 scales for `fill` and `color` (also
aliased as `colour`).

``` r
library(ggplot2)
library(crayons)

mpg |>
  ggplot() + 
  geom_point(aes(displ, hwy, colour = class)) + 
  scale_color_crayons(palette = 'original')
```

<img src="man/figures/README-example-1.png" width="100%" />

`crayons` has many palettes, based on current and long-gone crayon
packs.

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-3.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-4.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-5.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-6.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-7.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-8.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-9.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-10.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-11.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-12.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-13.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-14.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-15.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-16.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-17.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-18.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-19.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-20.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-21.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-22.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-23.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-24.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-25.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-26.png" width="100%" /><img src="man/figures/README-unnamed-chunk-2-27.png" width="100%" />

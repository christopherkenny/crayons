# crayons

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

![](reference/figures/README-example-1.png)

`crayons` has many palettes, based on current and long-gone crayon
packs.

![](reference/figures/README-unnamed-chunk-2-1.png)![](reference/figures/README-unnamed-chunk-2-2.png)![](reference/figures/README-unnamed-chunk-2-3.png)![](reference/figures/README-unnamed-chunk-2-4.png)![](reference/figures/README-unnamed-chunk-2-5.png)![](reference/figures/README-unnamed-chunk-2-6.png)![](reference/figures/README-unnamed-chunk-2-7.png)![](reference/figures/README-unnamed-chunk-2-8.png)![](reference/figures/README-unnamed-chunk-2-9.png)![](reference/figures/README-unnamed-chunk-2-10.png)![](reference/figures/README-unnamed-chunk-2-11.png)![](reference/figures/README-unnamed-chunk-2-12.png)![](reference/figures/README-unnamed-chunk-2-13.png)![](reference/figures/README-unnamed-chunk-2-14.png)![](reference/figures/README-unnamed-chunk-2-15.png)![](reference/figures/README-unnamed-chunk-2-16.png)![](reference/figures/README-unnamed-chunk-2-17.png)![](reference/figures/README-unnamed-chunk-2-18.png)![](reference/figures/README-unnamed-chunk-2-19.png)![](reference/figures/README-unnamed-chunk-2-20.png)![](reference/figures/README-unnamed-chunk-2-21.png)![](reference/figures/README-unnamed-chunk-2-22.png)![](reference/figures/README-unnamed-chunk-2-23.png)![](reference/figures/README-unnamed-chunk-2-24.png)![](reference/figures/README-unnamed-chunk-2-25.png)![](reference/figures/README-unnamed-chunk-2-26.png)![](reference/figures/README-unnamed-chunk-2-27.png)

# Heuristics for Color Distances and Locations

- `pick_colors()` places each color into RGB space, clusters them with
  k-means, and returns the colors nearest each cluster center.

- `color_order()` reorders colors so that subsequent colors are far from
  each other in RGB space.

- `color_distance()` calculates pairwise distances in RGB space between
  colors.

## Usage

``` r
pick_colors(hex, n)

color_distance(hex)

color_order(hex)
```

## Arguments

- hex:

  a character vector of hexadecimal colors

- n:

  the integer number of desired colors

## Value

a character vector that is a subset of `hex`, or a matrix of distances
for `color_distance()`

## Examples

``` r
pick_colors(crayons$standard, 10)
#> <palette[10]>
#>              light_blue tropical_rain_forest              thistle
#>                #8FD8D8              #00755E              #D8BFD8 
#>                  cerise                peach               shadow
#>                #DA3287              #FFCBA4              #837050 
#>             blue_violet           blue_green         burnt_sienna
#>                #6456B7              #0095B7              #E97451 
#>               crayellow
#>                #F1D651 
color_order(crayons$standard)
#> <palette[124]>
#>                         red         robin_s_egg_blue                 inchworm
#>                    #ED0A3F                  #00CCCC                  #AFE313 
#>                    blue_iii            pink_flamingo                  scarlet
#>                    #0066FF                  #FC74FD                  #FD0E35 
#>                       green             lemon_yellow            midnight_blue
#>                    #01A638                  #FFFF9F                  #003366 
#>                  piggy_pink              mango_tango                 cerulean
#>                    #FDD7E4                  #E77200                  #02A4D3 
#>                      canary               razzmatazz                navy_blue
#>                    #FFFF99                  #E30B5C                  #0066CC 
#>             caribbean_green               red_orange                cool_mint
#>                    #00CC99                  #FF681F                  #DDEBEC 
#>                 outer_space          wild_strawberry             pacific_blue
#>                    #2D383A                  #FF3399                  #009DC4 
#>                      yellow     tropical_rain_forest            sunset_orange
#>                    #FBE870                  #00755E                  #FE4C40 
#>                 powder_blue            jazzberry_jam               blue_green
#>                    #C0D5F0                  #A50B5E                  #0095B7 
#>                   dandelion             banana_mania               pine_green
#>                    #FED85D                  #FBE7B2                  #01796F 
#>                      orange                bluetiful             cotton_candy
#>                    #FF8833                  #3C69E7                  #FFB7D5 
#>                 fuzzy_wuzzy           turquoise_blue                teal_blue
#>                    #87421F                  #6CDAE7                  #008080 
#>                burnt_orange             spring_green                    denim
#>                    #FF7034                  #ECEBBD                  #1560BD 
#>                      maroon                crayellow                 sky_blue
#>                    #C32148                  #F1D651                  #76D7EA 
#>                purple_heart               orange_red               aquamarine
#>                    #652DC1                  #FF5349                  #95E0E8 
#>                    mahogany          mountain_meadow            yellow_orange
#>                    #CA3435                  #1AB385                  #FFAE42 
#>                 lavender_ii                goldenrod               green_blue
#>                    #FBAED2                  #FCD667                  #2887C8 
#>                   brick_red                 shamrock                  apricot
#>                    #C62D42                  #33CC99                  #FDD5B1 
#>                   raw_umber           carnation_pink               violet_red
#>                    #665233                  #FFA6C9                  #F7468A 
#>                       maize               cornflower                 eggplant
#>                    #F2C649                  #93CCEA                  #614051 
#>                      almond             jungle_green                  magenta
#>                    #EED9C4                  #29AB87                  #F653A6 
#>                green_yellow                   cerise               periwinkle
#>                    #F1E788                  #DA3287                  #C3CDE6 
#>                      indigo            orange_yellow                  oatmeal
#>                    #4F69C6                  #F8D568                  #D9DAD2 
#>                royal_purple               light_blue              bittersweet
#>                    #6B3FA0                  #8FD8D8                  #FE6F5E 
#>                        plum                    peach             vivid_violet
#>                    #8E3179                  #FFCBA4                  #803790 
#>                  timberwolf                    brown              blue_violet
#>                    #D9D6CF                  #AF593E                  #6456B7 
#>                         tan               red_violet                  thistle
#>                    #FA9D5A                  #BB3385                  #D8BFD8 
#>                        fern                    melon                    sepia
#>                    #63B76C                  #FEBAAD                  #9E5B40 
#>                   sea_green                 chestnut purple_mountains_majesty
#>                    #93DFB8                  #B94E48                  #D6AEDD 
#>         macaroni_and_cheese                  fuchsia             yellow_green
#>                    #FFB97B                  #C154C1                  #C5E17A 
#>                 violet_blue             burnt_sienna             forest_green
#>                    #766EC8                  #E97451                  #5FA777 
#>                      orchid           tickle_me_pink       granny_smith_apple
#>                    #E29CD2                  #FC80A5                  #9DE093 
#>                      shadow                   salmon               raw_sienna
#>                    #837050                  #FF91A4                  #D27D46 
#>                    wisteria              desert_sand                asparagus
#>                    #C9A0DC                  #EDC9AF                  #7BA05B 
#>                       blush                blue_gray          vivid_tangerine
#>                    #DB5079                  #C8C8CD                  #FF9980 
#>                   violet_ii                 mulberry         wild_blue_yonder
#>                    #8359A3                  #C8509B                  #7A89B8 
#>                      beaver            pink_sherbert                blue_bell
#>                    #926F5B                  #F7A38E                  #9999CC 
#>                 olive_green                mauvelous                  gold_ii
#>                    #B5B35C                  #F091A9                  #E6BE8A 
#>                  lavender_i                   silver               cadet_blue
#>                    #BF8FCC                  #C9C0BB                  #A9B2C3 
#>                      copper            antique_brass                     gray
#>                    #DA8A67                  #C88A65                  #8B8680 
#>                  tumbleweed                  manatee                    white
#>                    #DEA681                  #8D90A1                  #FFFFFF 
#>                       black
#>                    #000000 
color_distance(crayons$standard[1:4])
#>                       red robin_s_egg_blue inchworm blue_iii
#> red                0.0000         337.1735 229.9326 318.5859
#> robin_s_egg_blue 337.1735           0.0000 255.6932 114.0395
#> inchworm         229.9326         255.6932   0.0000 319.2898
#> blue_iii         318.5859         114.0395 319.2898   0.0000
```

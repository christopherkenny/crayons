#' Crayons Color Palettes
#'
#' Crayon colors, based on common Crayola colors.
#' Palettes build from [Wikipedia](https://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors)
#'
#' Included palettes:
#' - **billionth**, celebrates the 100 billionth crayon
#' - **color_n_smell**, scented colors
#' - **colors_of_the_world**, additional human colors
#' - **construction_paper**, colors for construction paper
#' - **fluorescent**, neon colors
#' - **gel_fx**, gel colors
#' - **gem_tones**, gemstones
#' - **heads_n_tails**, double sided colors
#' - **magic_scent**, scented colors
#' - **metallic_fx**, metal colors
#' - **mini_twistables**, colors, but twistable
#' - **modern**, historical colors since 1990
#' - **munsell**, historical colors 1926-1944
#' - **multicultural**, skin colors
#' - **no_48**, historical crayons 48-pack in 1949
#' - **no_64**, historical crayons 64-pack in 1958
#' - **original**, historical crayons original in 1903
#' - **pearl**, updated perlescent colors
#' - **pearl_brite**, pearlescent colors
#' - **silly_scents**, scented in reality but not in R
#' - **silver_swirls**, colors with a tinge of silver
#' - **standard**, a large set of standard colors
#' - **standard16**, colors for a 16 pack of crayons
#' - **standard24**, colors for a 24 pack of crayons
#' - **standard32**, colors for a 32 pack of crayons
#' - **standard64**, colors for a 64 pack of crayons
#' - **star_brite**, colors from 1997
#'
#' @format list of character vectors of type `c('palette', 'character')`
#'
#' @examples
#' plot(crayons$billionth)
#' plot(crayons$color_n_smell)
#' plot(crayons$colors_of_the_world)
#' plot(crayons$construction_paper)
#' plot(crayons$fluorescent)
#' plot(crayons$gel_fx)
#' plot(crayons$gem_tones)
#' plot(crayons$heads_n_tails)
#' plot(crayons$magic_scent)
#' plot(crayons$metallic_fx)
#' plot(crayons$mini_twistables)
#' plot(crayons$modern)
#' plot(crayons$munsell)
#' plot(crayons$multicultural)
#' plot(crayons$no_48)
#' plot(crayons$no_64)
#' plot(crayons$original)
#' plot(crayons$pearl)
#' plot(crayons$pearl_brite)
#' plot(crayons$silly_scents)
#' plot(crayons$silver_swirls)
#' plot(crayons$standard)
#' plot(crayons$standard16)
#' plot(crayons$standard24)
#' plot(crayons$standard32)
#' plot(crayons$standard64)
#' plot(crayons$star_brite)
#'
#' @concept colors
#' @export
crayons = list(
  billionth = structure(c(blue_ribbon = '#0B10A2'),
    class = c('palette', 'character')
  ),
  color_n_smell = structure(
    c(
      babys_powder = '#FFFFFF',
      flower_shop = '#C9A0DC', new_sneakers = '#000000', sharpening_pencils = '#FCD667',
      baseball_mitt = '#E97451', fresh_air = '#76D7EA', pet_shop = '#AF593E',
      smell_the_roses = '#ED0A3F', bubble_bath = '#FC80A5', grandmas_perfume = '#FF8833',
      pine_tree = '#01796F', sunny_day = '#FBE870', earthworm = '#C62D42',
      koala_tree = '#29AB87', saw_dust = '#FFCBA4', wash_the_dog = '#FED85D'
    ),
    class = c('palette', 'character')
  ),
  colors_of_the_world = structure(c(
    deep_almond = '#986A5A',
    deep_golden = '#8D5B28', deep_rose = '#B86F69', deepest_almond = '#513529',
    extra_deep_almond = '#6E5046', extra_deep_golden = '#5F452E',
    extra_deep_rose = '#6C4D4B', extra_light_almond = '#EEE6CF',
    light_almond = '#E6B9B3', light_golden = '#EDDBC7', light_medium_almond = '#E0B5A4',
    light_medium_golden = '#F0C9A2', light_medium_rose = '#F4AFB2',
    light_rose = '#FAC7C3', medium_almond = '#D19C7D', medium_deep_almond = '#AC8065',
    medium_deep_golden = '#A16B4F', medium_deep_rose = '#EE8E99',
    medium_golden = '#DEA26C', very_deep_almond = '#88605E', very_deep_rose = '#8F6C68',
    very_light_almond = '#E6D2D3', very_light_golden = '#F0DFCF',
    very_light_rose = '#F7E1E3', black_hair = '#000000', blonde_hair = '#FFFF99',
    blue_eyes = '#6CDAE7', brown_eyes = '#AF593E', brown_hair = '#9E5B40',
    green_eyes = '#7BA05B', hazel_eyes = '#D27D46', red_hair = '#CA3435'
  ), class = c('palette', 'character')),
  construction_paper = structure(c(
    '#FFA3B1',
    '#F3715A', '#F37B70', '#FFAD59', '#FFE599', '#F8FC98', '#B4FFB4',
    '#12E3DB', '#00BCD4', '#03A9F4', '#4848FF', '#6A35CE', '#AA55AA',
    '#7F7FBF', '#795548', '#FFFFFF'
  ), class = c('palette', 'character')),
  fluorescent = structure(
    c(
      radical_red = '#FF355E', wild_watermelon = '#FD5B78',
      outrageous_orange = '#FF6037', atomic_tangerine = '#FF9966',
      neon_carrot = '#FF9933', sunglow = '#FFCC33', laser_lemon = '#FFFF66',
      unmellow_yellow = '#FFFF66', electric_lime = '#CCFF00', screamin__green = '#66FF66',
      magic_mint = '#AAF0D1', blizzard_blue = '#50BFE6', shocking_pink = '#FF6EFF',
      razzle_dazzle_rose = '#EE34D2', hot_magenta = '#FF00CC', purple_pizzazz = '#FF00BB'
    ),
    class = c('palette', 'character')
  ),
  gel_fx = structure(c(
    '#FF3399',
    '#FF6699', '#F26D7D', '#F58345', '#FFBF7F', '#F5FF7D', '#99FF99',
    '#12E3DB', '#00B6BD', '#0081FF', '#7092BE', '#3F48CC', '#7853A8',
    '#A349A4', '#8F5873', '#FFFFFF'
  ), class = c('palette', 'character')),
  gem_tones = structure(c(
    amethyst = '#64609A', jasper = '#D05340',
    onyx = '#353839', ruby = '#AA4069', citrine = '#933709', lapis_lazuli = '#436CB9',
    peridot = '#ABAD48', sapphire = '#2D5DA1', emerald = '#14A989',
    malachite = '#469496', pink_pearl = '#B07080', smokey_topaz = '#832A0D',
    jade = '#469A84', moonstone = '#3AA8C1', rose_quartz = '#BD559C',
    tigers_eye = '#B56917'
  ), class = c('palette', 'character')),
  heads_n_tails = structure(
    c(
      sizzling_red = '#FF3855', bright_yellow = '#FFAA1D',
      denim_blue = '#2243B6', sweet_brown = '#A83731', red_salsa = '#FD3A4A',
      yellow_sunshine = '#FFF700', blue_jeans = '#5DADEC', brown_sugar = '#AF6E4D',
      tart_orange = '#FB4D46', slimy_green = '#299617', plump_purple = '#5946B2',
      eerie_black = '#1B1B1B', orange_soda = '#FA5B3D', green_lizard = '#A7F432',
      purple_plum = '#9C51B6', black_shadows = '#BFAFB2'
    ),
    class = c('palette', 'character')
  ),
  magic_scent = structure(c(
    baby_powder = '#FFFFFF',
    cedar_chest = '#CA3435', daffodil = '#FBE870', grape = '#8359A3',
    licorice = '#000000', new_car = '#0066FF', rose = '#ED0A3F',
    banana = '#FED85D', cherry = '#C32148', dirt = '#9E5B40',
    jelly_bean = '#FF8833', lilac = '#C9A0DC', orange = '#FF8833',
    shampoo = '#FFA6C9', strawberry = '#FF3399', blueberry = '#4570E6',
    chocolate = '#AF593E', eucalyptus = '#29AB87', leather_jacket = '#000000',
    lime = '#C5E17A', peach = '#FFCBA4', smoke = '#8B8680', tulip = '#FF8833',
    bubble_gum = '#FC80A5', coconut = '#FFFFFF', fresh_air = '#76D7EA',
    lemon = '#FBE870', lumber = '#FDD5B1', pine = '#01796F',
    soap = '#C3CDE6'
  ), class = c('palette', 'character')),
  metallic_fx = structure(c(
    alloy_orange = '#C46210',
    b_dazzled_blue = '#2E5894', big_dip_o__ruby = '#9C2542',
    bittersweet_shimmer = '#BF4F51', blast_off_bronze = '#A57164',
    cyber_grape = '#58427C', deep_space_sparkle = '#4A646C',
    gold_fusion = '#85754E', illuminating_emerald = '#319177',
    metallic_seaweed = '#0A7E8C', robot_canary = '#9C7C38', razzmic_berry = '#8D4E85',
    sheen_green = '#8FD400', shimmering_blush = '#D98695', sonic_silver = '#757575',
    steel_blue = '#0081AB', cheese_grater = '#C89F56', iron_indigo = '#184FA1',
    magnetic_magenta = '#BF3981', cobalt_cool = '#028AAE', acid_wash_jeans = '#5CB2C5',
    petrified_forest = '#005B39', rose_gold = '#C88CA4', gold_medal = '#C5BC42'
  ), class = c('palette', 'character')),
  mini_twistables = structure(
    c(
      apricot = '#FDD9B5',
      black = '#000000', blue = '#1F75FE', blue_green = '#0D98BA',
      blue_violet = '#7366BD', brown = '#B4674D', carnation_pink = '#FFAACC',
      cerulean = '#1DACD6', dandelion = '#FDDB6D', gray = '#95918C',
      green = '#1CAC78', green_yellow = '#F0E891', indigo = '#5D76CB',
      orange = '#FF7538', red = '#EE204D', red_orange = '#FF5349',
      red_violet = '#C0448F', scarlet = '#FC2847', violet = '#926EAE',
      violet_red = '#F75394', white = '#FFFFFF', yellow = '#FCE883',
      yellow_green = '#C5E384', yellow_orange = '#FFAE42'
    ), class = c('palette', 'character')),
  modern = structure(c(scarlet = "#FD0E35", sunset_orange = "#FE4C40", vivid_tangerine = "#FF9980",
                       macaroni_and_cheese = "#FFB97B", mango_tango = "#E77200", banana_mania = "#FBE7B2",
                       dandelion = "#FED85D", canary = "#FFFF99", inchworm = "#AFE313",
                       asparagus = "#7BA05B", granny_smith_apple = "#9DE093", fern = "#63B76C",
                       shamrock = "#33CC99", mountain_meadow = "#1AB385", jungle_green = "#29AB87",
                       caribbean_green = "#00CC99", tropical_rain_forest = "#00755E",
                       robin_s_egg_blue = "#00CCCC", teal_blue = "#008080", outer_space = "#2D383A",
                       pacific_blue = "#1CA9C9", cerulean = "#02A4D3", denim = "#1560BD",
                       bluetiful = "#3C69E7", wild_blue_yonder = "#A2ADD0", indigo = "#4B0082",
                       manatee = "#979AAA", blue_bell = "#A2A2D0", purple_heart = "#69359C",
                       royal_purple = "#7851A9", wisteria = "#C9A0DC", vivid_violet = "#9F00FF",
                       purple_mountains__majesty = "#9678B6", fuchsia = "#C154C1", pink_flamingo = "#FC74FD",
                       jazzberry_jam = "#A50B5E", eggplant = "#614051", cerise = "#DE3163",
                       wild_strawberry = "#FF43A4", cotton_candy = "#FFBCD9", razzmatazz = "#E3256B",
                       pig_pink = "#FDDDE6", blush = "#DE5D83", tickle_me_pink = "#FC89AC",
                       mauvelous = "#EF98AA", pink_sherbert = "#F78FA7", fuzzy_wuzzy = "#CC6666",
                       beaver = "#9F8170", tumbleweed = "#DEAA88", desert_sand = "#EDC9AF",
                       almond = "#EFDECD", shadow = "#8A795D", timberwolf = "#D9D6CF",
                       antique_brass = "#CD9575"), class = c("palette", "character")),
  munsell = structure(c(maximum_red = "#D92121", middle_red = "#E58E73",
                        middle_yellow_red = "#ECB176", maximum_yellow_red = "#F2BA49",
                        middle_yellow = "#FFEB00", maximum_yellow = "#FAFA37", maximum_green_yellow = "#D9E650",
                        middle_green_yellow = "#ACBF60", maximum_green = "#5E8C31", middle_green = "#4D8C57",
                        middle_blue_green = "#8DD9CC", maximum_blue_green = "#30BFBF",
                        middle_blue = "#7ED4E6", maximum_blue = "#47ABCC", maximum_blue_purple = "#ACACE6",
                        middle_blue_purple = "#8B72BE", maximum_purple = "#733380", middle_purple = "#D982B5",
                        maximum_red_purple = "#A63A79", middle_red_purple = "#A55353",
                        middle_grey = "#8B8680", black = "#000000"), class = c("palette",
                                                                               "character")),
  multicultural = structure(c(
      apricot = '#FDD5B1',
      black = '#000000', burnt_sienna = '#E97451', mahogany = '#CA3435',
      peach = '#FFCBA4', sepia = '#9E5B40', white = '#FFFFFF'
    ), class = c('palette', 'character')),
  no_48 = structure(c(red = "#ED0A3F", dark_red = "#8B0000", indian_red = "#CD5C5C",
                      red_orange = "#FF4500", orange = "#FF8833", medium_orange = "#ECB176",
                      yellow_orange = "#FFAE42", medium_yellow = "#FCD667", yellow = "#FFFF00",
                      olive_green = "#B5B35C", light_yellow = "#FFFFE0", yellow_green = "#9ACD32",
                      dark_green = "#013220", light_green = "#90EE90", green = "#01A368",
                      turquoise_blue = "#00FFEF", middle_blue_green = "#0095B7",
                      blue_green = "#0D98BA", azure_blue = "#4997D0", cerulean_blue = "#2A52BE",
                      prussian_blue = "#003153", blue = "#0066FF", medium_blue = "#0000CD",
                      cobalt_blue = "#0047AB", blue_violet = "#8A2BE2", violet = "#7F00FF",
                      medium_violet = "#65315F", lavender = "#B57EDC", medium_red_violet = "#BB3385",
                      light_magenta = "#FF80FF", red_violet = "#C71585", magenta = "#FF00FF",
                      rose_pink = "#FF66CC", carmine_red = "#FF0038", salmon = "#FA8072",
                      mahogany = "#C04000", burnt_sienna = "#E97451", brown = "#964B00",
                      flesh = "#FFCBA4", raw_umber = "#826644", silver = "#AAA9AD",
                      black = "#000000", neutral_gray = "#8B8680", white = "#FFFFFF"
  ), class = c("palette", "character")),
  no_64 = structure(c(red = "#ED0A3F", maroon = "#C32148", brick_red = "#CB4154",
                      indian_red = "#CD5C5C", orange_red = "#FF681F", bittersweet = "#FE6F5E",
                      burnt_orange = "#CC5500", red_orange = "#FF4500", orange = "#FF8833",
                      yellow_orange = "#FFAE42", maize = "#F2C649", orange_yellow = "#F5BD1F",
                      goldenrod = "#DAA520", yellow = "#FFFF00", green_yellow = "#F1E788",
                      spring_green = "#ECEBBD", olive_green = "#B5B35C", lemon_yellow = "#FFF44F",
                      yellow_green = "#9ACD32", forest_green = "#228B22", sea_green = "#2E8B57",
                      green = "#008001", pine_green = "#01796F", light_blue = "#\tADD8E",
                      sky_blue = "#76D7EA", blue_green = "#0095B7", cornflower = "#93CCEA",
                      navy_blue = "#0066CC", blue = "#0066FF", cadet_blue = "#A9B2C3",
                      periwinkle = "#C3CDE6", violet_blue = "#766EC8", blue_violet = "#6456B7",
                      violet = "#8359A3", plum = "#8E3179", orchid = "#E29CD2", red_violet = "#BB3385",
                      lavender = "#FBAED2", carnation_pink = "#FFA6C9", violet_red = "#F7468A",
                      salmon = "#FF91A4", mahogany = "#CA3435", melon = "#FEBAAD",
                      burnt_sienna = "#E97451", brown = "#AF593E", sepia = "#9E5B40",
                      raw_sienna = "#D27D46", peach = "#FFCBA4", apricot = "#FDD5B1",
                      raw_umber = "#826644", gold = "#A57C00", silver = "#AAA9AD",
                      copper = "#B87333", black = "#000000", gray = "#8B8680", blue_gray = "#6699CC",
                      white = "#FFFFFF"
  ), class = c("palette", "character")),
  original = structure(c(red = "#ED0A3F", english_vermilion = "#CC474B", madder_lake = "#CC3336",
                         permanent_geranium_lake = "#E12C2C", indian_red = "#CD5C5C",
                         venetian_red = "#C80815", orange = "#FF8833", medium_chrome_yellow = "#FCD667",
                         yellow = "#FFFF00", olive_green = "#B5B35C",
                         green = "#008001", dark_chrome_green = "#01786F", blue = "#2EB4E6",
                         cobalt_blue = "#0047AB", celestial_blue = "#4997D0",
                         ultramarine_blue = "#4166F5", purple = "#6A0DAD", permanent_magenta = "#F653A6",
                         rose_pink = "#FF66CC", burnt_sienna = "#E97451", van_dyke_brown = "#664228",
                         flesh_tint = "#FFCBA4", burnt_umber = "#8A3324", raw_umber = "#826644",
                         raw_sienna = "#D68A59", gold = "#A57C00", silver = "#AAA9AD",
                         copper = "#B87333", black = "#000000", white = "#FFFFFF"
  ), class = c("palette", "character")),
  pearl = structure(c(
    antique_gray = '#9F9F9F',
    apple_orchard = '#BF3F3F', berry_parfait = '#A43482', black_pearl = '#3A3A3A',
    bubble_gum = '#DF9ACA', butternut_squash = '#E74F00', caribbean_sea = '#67CD95',
    cloudy_sky = '#548CD0', hot_cocoa = '#8F482F', iridescent_indigo = '#3C32CD',
    lavender_silk = '#6B4D82', leafy_canopy = '#94DDCB', liquid_gold = '#FFD966',
    mango_puree = '#FF6137', moonlit_pond = '#4F2CD0', ocean_foam = '#62C9D3',
    orange_peel = '#FF8021', pesto = '#5F7B4A', pink_luster = '#FFB2E7',
    red_satin = '#9F3434', sea_glass = '#C4EA7F', shooting_star = '#FFFF65',
    snow_drift = '#F3F3F3', sunset_shimmer = '#F79015'
  ), class = c('palette', 'character')),
  pearl_brite = structure(c(
    aqua = '#5FBED7',
    key_lime = '#E8F48C', ocean_blue = '#4F42B5', salmon = '#F1444A',
    black_coral = '#54626F', mandarin = '#F37A48', ocean_green = '#48BF91',
    sunny = '#F2F27A', caribbean_green = '#6ADA8E', midnight = '#702670',
    orchid = '#7B4259', sunset = '#F1CC79', cultured = '#F5F5F5',
    mystic = '#D65282', rose = '#F03865', turquoise = '#3BBCD0'
  ), class = c('palette', 'character')),
  silly_scents = structure(c(
    yellow_green = '#C5E17A',
    tan = '#D99A6C', spring_green = '#ECEBBD', maroon = '#C32148',
    dandelion = '#FED85D', chestnut = '#B94E48', red = '#ED0A3F',
    gray = '#8B8680', red_orange = '#FF681F', blue_violet = '#6456B7',
    tickle_me_pink = '#FC80A5', violet_red = '#F7468A', robins_egg_blue = '#00CCCC',
    orange = '#FF8833', mango_tango = '#E77200', sky_blue = '#76D7EA'
  ), class = c('palette', 'character')),
  silver_swirls = structure(c(
    aztec_gold = '#C39953',
    copper_penny = '#AD6F69', green_sheen = '#6EAEA1', pearly_purple = '#B768A2',
    rose_dust = '#9E5E6F', steel_teal = '#5F8A8B', burnished_brown = '#A17A74',
    cosmic_cobalt = '#2E2D88', lilac_luster = '#AE98AA', pewter_blue = '#8BA8B7',
    rusty_red = '#DA2C43', sugar_plum = '#914E75', cerulean_frost = '#6D9BC3',
    glossy_grape = '#AB92B3', misty_moss = '#BBB477', polished_pine = '#5DA493',
    shadow_blue = '#778BA5', twilight_lavender = '#8A496B', cinnamon_satin = '#CD607E',
    granite_gray = '#676767', mystic_maroon = '#AD4379', quick_silver = '#A6A6A6',
    shiny_shamrock = '#5FA778', wintergreen_dream = '#56887D'
  ), class = c('palette', 'character')),
  standard = structure(c(
    red = '#ED0A3F',
    maroon = '#C32148', scarlet = '#FD0E35', brick_red = '#C62D42',
    chestnut = '#B94E48', orange_red = '#FF5349', sunset_orange = '#FE4C40',
    bittersweet = '#FE6F5E', vivid_tangerine = '#FF9980', burnt_orange = '#FF7034',
    red_orange = '#FF681F', orange = '#FF8833', macaroni_and_cheese = '#FFB97B',
    mango_tango = '#E77200', yellow_orange = '#FFAE42', banana_mania = '#FBE7B2',
    maize = '#F2C649', orange_yellow = '#F8D568', goldenrod = '#FCD667',
    dandelion = '#FED85D', yellow = '#FBE870', green_yellow = '#F1E788',
    olive_green = '#B5B35C', spring_green = '#ECEBBD', canary = '#FFFF99',
    lemon_yellow = '#FFFF9F', inchworm = '#AFE313', yellow_green = '#C5E17A',
    asparagus = '#7BA05B', granny_smith_apple = '#9DE093', fern = '#63B76C',
    green = '#01A638', forest_green = '#5FA777', sea_green = '#93DFB8',
    shamrock = '#33CC99', mountain_meadow = '#1AB385', jungle_green = '#29AB87',
    caribbean_green = '#00CC99', tropical_rain_forest = '#00755E',
    pine_green = '#01796F', robin_s_egg_blue = '#00CCCC', teal_blue = '#008080',
    light_blue = '#8FD8D8', aquamarine = '#95E0E8', turquoise_blue = '#6CDAE7',
    outer_space = '#2D383A', sky_blue = '#76D7EA', blue_green = '#0095B7',
    pacific_blue = '#009DC4', cerulean = '#02A4D3', cornflower = '#93CCEA',
    green_blue = '#2887C8', midnight_blue = '#003366', navy_blue = '#0066CC',
    denim = '#1560BD', blue__iii_ = '#0066FF', cadet_blue = '#A9B2C3',
    periwinkle = '#C3CDE6', bluetiful = '#3C69E7', wild_blue_yonder = '#7A89B8',
    indigo = '#4F69C6', manatee = '#8D90A1', blue_bell = '#9999CC',
    violet_blue = '#766EC8', blue_violet = '#6456B7', purple_heart = '#652DC1',
    royal_purple = '#6B3FA0', violet__ii_ = '#8359A3', wisteria = '#C9A0DC',
    lavender__i_ = '#BF8FCC', vivid_violet = '#803790', purple_mountains__majesty = '#D6AEDD',
    fuchsia = '#C154C1', pink_flamingo = '#FC74FD', orchid = '#E29CD2',
    plum = '#8E3179', thistle = '#D8BFD8', mulberry = '#C8509B',
    red_violet = '#BB3385', jazzberry_jam = '#A50B5E', eggplant = '#614051',
    magenta = '#F653A6', cerise = '#DA3287', wild_strawberry = '#FF3399',
    lavender__ii_ = '#FBAED2', cotton_candy = '#FFB7D5', carnation_pink = '#FFA6C9',
    violet_red = '#F7468A', razzmatazz = '#E30B5C', piggy_pink = '#FDD7E4',
    blush = '#DB5079', tickle_me_pink = '#FC80A5', mauvelous = '#F091A9',
    salmon = '#FF91A4', mahogany = '#CA3435', melon = '#FEBAAD',
    pink_sherbert = '#F7A38E', burnt_sienna = '#E97451', brown = '#AF593E',
    sepia = '#9E5B40', fuzzy_wuzzy = '#87421F', beaver = '#926F5B',
    tumbleweed = '#DEA681', raw_sienna = '#D27D46', tan = '#FA9D5A',
    desert_sand = '#EDC9AF', peach = '#FFCBA4', apricot = '#FDD5B1',
    almond = '#EED9C4', raw_umber = '#665233', shadow = '#837050',
    gold__ii_ = '#E6BE8A', silver = '#C9C0BB', copper = '#DA8A67',
    antique_brass = '#C88A65', black = '#000000', gray = '#8B8680',
    blue_gray = '#C8C8CD', timberwolf = '#D9D6CF', white = '#FFFFFF',
    crayellow = '#F1D651', cool_mint = '#DDEBEC', oatmeal = '#D9DAD2',
    powder_blue = '#C0D5F0'
  ), class = c('palette', 'character')),
  standard16 = structure(c(
    red = '#ED0A3F', red_orange = '#FF681F',
    orange = '#FF8833', yellow_orange = '#FFAE42', yellow = '#FBE870',
    yellow_green = '#C5E17A', green = '#01A638', blue_green = '#0095B7',
    blue__iii_ = '#0066FF', blue_violet = '#6456B7', violet__ii_ = '#8359A3',
    red_violet = '#BB3385', carnation_pink = '#FFA6C9', brown = '#AF593E',
    black = '#000000', white = '#FFFFFF'
  ), class = c('palette', 'character')),
  standard24 = structure(c(
    red = '#ED0A3F',
    scarlet = '#FD0E35', red_orange = '#FF681F', orange = '#FF8833',
    yellow_orange = '#FFAE42', dandelion = '#FED85D', yellow = '#FBE870',
    green_yellow = '#F1E788', yellow_green = '#C5E17A', green = '#01A638',
    blue_green = '#0095B7', cerulean = '#02A4D3', blue__iii_ = '#0066FF',
    indigo = '#4F69C6', blue_violet = '#6456B7', violet__ii_ = '#8359A3',
    red_violet = '#BB3385', carnation_pink = '#FFA6C9', violet_red = '#F7468A',
    brown = '#AF593E', apricot = '#FDD5B1', black = '#000000',
    gray = '#8B8680', white = '#FFFFFF'
  ), class = c('palette', 'character')),
  standard32 = structure(c(
    red = '#ED0A3F',
    scarlet = '#FD0E35', chestnut = '#B94E48', red_orange = '#FF681F',
    orange = '#FF8833', yellow_orange = '#FFAE42', dandelion = '#FED85D',
    yellow = '#FBE870', green_yellow = '#F1E788', yellow_green = '#C5E17A',
    green = '#01A638', sky_blue = '#76D7EA', blue_green = '#0095B7',
    cerulean = '#02A4D3', blue__iii_ = '#0066FF', cadet_blue = '#A9B2C3',
    indigo = '#4F69C6', blue_violet = '#6456B7', violet__ii_ = '#8359A3',
    wisteria = '#C9A0DC', red_violet = '#BB3385', carnation_pink = '#FFA6C9',
    violet_red = '#F7468A', melon = '#FEBAAD', brown = '#AF593E',
    tan = '#FA9D5A', peach = '#FFCBA4', apricot = '#FDD5B1',
    black = '#000000', gray = '#8B8680', timberwolf = '#D9D6CF',
    white = '#FFFFFF'
  ), class = c('palette', 'character')),
  standard64 = structure(c(
    red = '#ED0A3F',
    scarlet = '#FD0E35', brick_red = '#C62D42', chestnut = '#B94E48',
    bittersweet = '#FE6F5E', burnt_orange = '#FF7034', red_orange = '#FF681F',
    orange = '#FF8833', macaroni_and_cheese = '#FFB97B', yellow_orange = '#FFAE42',
    goldenrod = '#FCD667', dandelion = '#FED85D', yellow = '#FBE870',
    green_yellow = '#F1E788', olive_green = '#B5B35C', spring_green = '#ECEBBD',
    yellow_green = '#C5E17A', asparagus = '#7BA05B', granny_smith_apple = '#9DE093',
    green = '#01A638', forest_green = '#5FA777', sea_green = '#93DFB8',
    robin_s_egg_blue = '#00CCCC', turquoise_blue = '#6CDAE7',
    sky_blue = '#76D7EA', blue_green = '#0095B7', pacific_blue = '#009DC4',
    cerulean = '#02A4D3', cornflower = '#93CCEA', blue__iii_ = '#0066FF',
    cadet_blue = '#A9B2C3', periwinkle = '#C3CDE6', indigo = '#4F69C6',
    blue_violet = '#6456B7', violet__ii_ = '#8359A3', wisteria = '#C9A0DC',
    purple_mountains__majesty = '#D6AEDD', plum = '#8E3179',
    red_violet = '#BB3385', magenta = '#F653A6', wild_strawberry = '#FF3399',
    lavender__ii_ = '#FBAED2', carnation_pink = '#FFA6C9', violet_red = '#F7468A',
    tickle_me_pink = '#FC80A5', mauvelous = '#F091A9', salmon = '#FF91A4',
    mahogany = '#CA3435', melon = '#FEBAAD', burnt_sienna = '#E97451',
    brown = '#AF593E', sepia = '#9E5B40', tumbleweed = '#DEA681',
    raw_sienna = '#D27D46', tan = '#FA9D5A', peach = '#FFCBA4',
    apricot = '#FDD5B1', gold__ii_ = '#E6BE8A', silver = '#C9C0BB',
    black = '#000000', gray = '#8B8680', timberwolf = '#D9D6CF',
    white = '#FFFFFF'
  ), class = c('palette', 'character')),
  star_brite = structure(c(
    '#F898C8',
    '#E91E63', '#D62518', '#AD0000', '#FA7A00', '#CDDC39', '#00D8A0',
    '#1BA77B', '#004C71', '#1AADE0', '#0069BD', '#333399', '#56418C',
    '#212321', '#E63300', '#DE6900'
  ), class = c('palette', 'character'))
)

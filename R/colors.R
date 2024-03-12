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
#' @format list of [palette::palette] vectors
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
crayons <- list(
  billionth = palette::palette(c(blue_ribbon = "#0B10A2")),
  color_n_smell = palette::palette(c(
    smell_the_roses = "#ED0A3F",
    fresh_air = "#76D7EA", pine_tree = "#01796F", wash_the_dog = "#FED85D",
    grandmas_perfume = "#FF8833", koala_tree = "#29AB87", sunny_day = "#FBE870",
    earthworm = "#C62D42", flower_shop = "#C9A0DC", saw_dust = "#FFCBA4",
    pet_shop = "#AF593E", bubble_bath = "#FC80A5", sharpening_pencils = "#FCD667",
    baseball_mitt = "#E97451", babys_powder = "#FFFFFF", new_sneakers = "#000000"
  )),
  colors_of_the_world = palette::palette(c(
    deep_almond = "#986A5A",
    very_light_rose = "#F7E1E3", blonde_hair = "#FFFF99", blue_eyes = "#6CDAE7",
    deepest_almond = "#513529", red_hair = "#CA3435", extra_light_almond = "#EEE6CF",
    extra_deep_golden = "#5F452E", very_light_golden = "#F0DFCF",
    deep_golden = "#8D5B28", light_rose = "#FAC7C3", extra_deep_rose = "#6C4D4B",
    very_light_almond = "#E6D2D3", hazel_eyes = "#D27D46", light_golden = "#EDDBC7",
    extra_deep_almond = "#6E5046", light_medium_rose = "#F4AFB2",
    green_eyes = "#7BA05B", brown_eyes = "#AF593E", light_medium_golden = "#F0C9A2",
    medium_deep_rose = "#EE8E99", brown_hair = "#9E5B40", light_almond = "#E6B9B3",
    very_deep_almond = "#88605E", medium_golden = "#DEA26C", light_medium_almond = "#E0B5A4",
    very_deep_rose = "#8F6C68", medium_deep_golden = "#A16B4F", deep_rose = "#B86F69",
    medium_almond = "#D19C7D", medium_deep_almond = "#AC8065", black_hair = "#000000"
  )),
  construction_paper = palette::palette(c(
    "#FFA3B1",
    "#03A9F4", "#795548", "#4848FF", "#FFAD59", "#12E3DB", "#F3715A",
    "#00BCD4", "#F8FC98", "#6A35CE", "#FFE599", "#F37B70", "#B4FFB4",
    "#AA55AA", "#7F7FBF", "#FFFFFF"
  )),
  fluorescent = palette::palette(c(
    radical_red = "#FF355E", blizzard_blue = "#50BFE6",
    electric_lime = "#CCFF00", hot_magenta = "#FF00CC", screamin_green = "#66FF66",
    shocking_pink = "#FF6EFF", laser_lemon = "#FFFF66", purple_pizzazz = "#FF00BB",
    magic_mint = "#AAF0D1", outrageous_orange = "#FF6037", sunglow = "#FFCC33",
    razzle_dazzle_rose = "#EE34D2", neon_carrot = "#FF9933", wild_watermelon = "#FD5B78",
    atomic_tangerine = "#FF9966"
  )),
  gel_fx = palette::palette(c(
    "#FF3399", "#12E3DB", "#0081FF", "#F58345",
    "#F5FF7D", "#00B6BD", "#3F48CC", "#FF6699", "#99FF99", "#8F5873",
    "#FFBF7F", "#7853A8", "#F26D7D", "#A349A4", "#7092BE", "#FFFFFF"
  )),
  gem_tones = palette::palette(c(
    amethyst = "#64609A",
    citrine = "#933709", moonstone = "#3AA8C1", jasper = "#D05340",
    emerald = "#14A989", smokey_topaz = "#832A0D", rose_quartz = "#BD559C",
    peridot = "#ABAD48", onyx = "#353839", lapis_lazuli = "#436CB9",
    tigers_eye = "#B56917", sapphire = "#2D5DA1", malachite = "#469496",
    ruby = "#AA4069", pink_pearl = "#B07080", jade = "#469A84"
  )),
  heads_n_tails = palette::palette(c(
    sizzling_red = "#FF3855",
    blue_jeans = "#5DADEC", yellow_sunshine = "#FFF700", eerie_black = "#1B1B1B",
    denim_blue = "#2243B6", green_lizard = "#A7F432", slimy_green = "#299617",
    red_salsa = "#FD3A4A", bright_yellow = "#FFAA1D", plump_purple = "#5946B2",
    black_shadows = "#BFAFB2", tart_orange = "#FB4D46", purple_plum = "#9C51B6",
    sweet_brown = "#A83731", orange_soda = "#FA5B3D", brown_sugar = "#AF6E4D"
  )),
  magic_scent = palette::palette(c(
    new_car = "#0066FF",
    rose = "#ED0A3F", daffodil = "#FBE870", pine = "#01796F", strawberry = "#FF3399",
    fresh_air = "#76D7EA", jelly_bean = "#FF8833", blueberry = "#4570E6",
    banana = "#FED85D", cherry = "#C32148", eucalyptus = "#29AB87",
    lumber = "#FDD5B1", cedar_chest = "#CA3435", soap = "#C3CDE6",
    shampoo = "#FFA6C9", dirt = "#9E5B40", peach = "#FFCBA4", lime = "#C5E17A",
    chocolate = "#AF593E", lilac = "#C9A0DC", grape = "#8359A3",
    bubble_gum = "#FC80A5", smoke = "#8B8680", baby_powder = "#FFFFFF",
    licorice = "#000000"
  )),
  metallic_fx = palette::palette(c(
    alloy_orange = "#C46210",
    cobalt_cool = "#028AAE", sheen_green = "#8FD400", rose_gold = "#C88CA4",
    petrified_forest = "#005B39", acid_wash_jeans = "#5CB2C5", big_dip_o_ruby = "#9C2542",
    steel_blue = "#0081AB", gold_medal = "#C5BC42", magnetic_magenta = "#BF3981",
    iron_indigo = "#184FA1", shimmering_blush = "#D98695", metallic_seaweed = "#0A7E8C",
    cheese_grater = "#C89F56", bittersweet_shimmer = "#BF4F51", b_dazzled_blue = "#2E5894",
    illuminating_emerald = "#319177", robot_canary = "#9C7C38", cyber_grape = "#58427C",
    razzmic_berry = "#8D4E85", blast_off_bronze = "#A57164", deep_space_sparkle = "#4A646C",
    gold_fusion = "#85754E", sonic_silver = "#757575"
  )),
  mini_twistables = palette::palette(c(
    apricot = "#FDD9B5",
    blue = "#1F75FE", scarlet = "#FC2847", green = "#1CAC78", yellow_orange = "#FFAE42",
    cerulean = "#1DACD6", red = "#EE204D", yellow = "#FCE883", blue_green = "#0D98BA",
    orange = "#FF7538", carnation_pink = "#FFAACC", red_orange = "#FF5349",
    indigo = "#5D76CB", dandelion = "#FDDB6D", violet_red = "#F75394",
    green_yellow = "#F0E891", blue_violet = "#7366BD", yellow_green = "#C5E384",
    red_violet = "#C0448F", brown = "#B4674D", violet = "#926EAE",
    gray = "#95918C", black = "#000000", white = "#FFFFFF"
  )),
  modern = palette::palette(c(
    scarlet = "#FD0E35", robin_s_egg_blue = "#00CCCC",
    pig_pink = "#FDDDE6", outer_space = "#2D383A", vivid_violet = "#9F00FF",
    inchworm = "#AFE313", canary = "#FFFF99", cerulean = "#02A4D3",
    mango_tango = "#E77200", pink_flamingo = "#FC74FD", tropical_rain_forest = "#00755E",
    indigo = "#4B0082", caribbean_green = "#00CC99", dandelion = "#FED85D",
    sunset_orange = "#FE4C40", cotton_candy = "#FFBCD9", teal_blue = "#008080",
    banana_mania = "#FBE7B2", jazzberry_jam = "#A50B5E", denim = "#1560BD",
    almond = "#EFDECD", razzmatazz = "#E3256B", pacific_blue = "#1CA9C9",
    wild_strawberry = "#FF43A4", bluetiful = "#3C69E7", mountain_meadow = "#1AB385",
    macaroni_and_cheese = "#FFB97B", cerise = "#DE3163", shamrock = "#33CC99",
    timberwolf = "#D9D6CF", eggplant = "#614051", desert_sand = "#EDC9AF",
    jungle_green = "#29AB87", vivid_tangerine = "#FF9980", purple_heart = "#69359C",
    tickle_me_pink = "#FC89AC", granny_smith_apple = "#9DE093", wisteria = "#C9A0DC",
    fern = "#63B76C", fuchsia = "#C154C1", pink_sherbert = "#F78FA7",
    asparagus = "#7BA05B", blush = "#DE5D83", royal_purple = "#7851A9",
    wild_blue_yonder = "#A2ADD0", fuzzy_wuzzy = "#CC6666", mauvelous = "#EF98AA",
    shadow = "#8A795D", blue_bell = "#A2A2D0", tumbleweed = "#DEAA88",
    antique_brass = "#CD9575", purple_mountains_majesty = "#9678B6",
    beaver = "#9F8170", manatee = "#979AAA"
  )),
  munsell = palette::palette(c(
    maximum_red = "#D92121",
    middle_blue = "#7ED4E6", middle_yellow = "#FFEB00", maximum_blue_green = "#30BFBF",
    maximum_yellow = "#FAFA37", maximum_blue_purple = "#ACACE6",
    maximum_purple = "#733380", maximum_blue = "#47ABCC", maximum_yellow_red = "#F2BA49",
    maximum_green = "#5E8C31", middle_purple = "#D982B5", maximum_green_yellow = "#D9E650",
    maximum_red_purple = "#A63A79", middle_blue_green = "#8DD9CC",
    middle_green = "#4D8C57", middle_yellow_red = "#ECB176", middle_blue_purple = "#8B72BE",
    middle_red_purple = "#A55353", middle_red = "#E58E73", middle_green_yellow = "#ACBF60",
    middle_grey = "#8B8680", black = "#000000"
  )),
  multicultural = palette::palette(c(
    apricot = "#FDD5B1",
    mahogany = "#CA3435", sepia = "#9E5B40", peach = "#FFCBA4", burnt_sienna = "#E97451",
    black = "#000000", white = "#FFFFFF"
  )),
  no_48 = palette::palette(c(
    red = "#ED0A3F", turquoise_blue = "#00FFEF",
    yellow = "#FFFF00", magenta = "#FF00FF", medium_blue = "#0000CD",
    red_orange = "#FF4500", blue = "#0066FF", light_yellow = "#FFFFE0",
    dark_green = "#013220", dark_red = "#8B0000", light_magenta = "#FF80FF",
    green = "#01A368", carmine_red = "#FF0038", violet = "#7F00FF",
    medium_yellow = "#FCD667", middle_blue_green = "#0095B7", prussian_blue = "#003153",
    flesh = "#FFCBA4", mahogany = "#C04000", cobalt_blue = "#0047AB",
    yellow_orange = "#FFAE42", light_green = "#90EE90", blue_green = "#0D98BA",
    rose_pink = "#FF66CC", brown = "#964B00", orange = "#FF8833",
    blue_violet = "#8A2BE2", yellow_green = "#9ACD32", cerulean_blue = "#2A52BE",
    red_violet = "#C71585", azure_blue = "#4997D0", medium_orange = "#ECB176",
    salmon = "#FA8072", lavender = "#B57EDC", medium_violet = "#65315F",
    burnt_sienna = "#E97451", olive_green = "#B5B35C", medium_red_violet = "#BB3385",
    silver = "#AAA9AD", raw_umber = "#826644", indian_red = "#CD5C5C",
    neutral_gray = "#8B8680", black = "#000000", white = "#FFFFFF"
  )),
  no_64 = palette::palette(c(
    red = "#ED0A3F",
    blue = "#0066FF", yellow = "#FFFF00", green = "#008001", lavender = "#FBAED2",
    red_orange = "#FF4500", navy_blue = "#0066CC", lemon_yellow = "#FFF44F",
    blue_green = "#0095B7", sky_blue = "#76D7EA", burnt_orange = "#CC5500",
    spring_green = "#ECEBBD", forest_green = "#228B22", orange_red = "#FF681F",
    pine_green = "#01796F", carnation_pink = "#FFA6C9", light_blue = "#ADD8E6",
    maroon = "#C32148", orange_yellow = "#F5BD1F", cornflower = "#93CCEA",
    violet_red = "#F7468A", gold = "#A57C00", periwinkle = "#C3CDE6",
    sea_green = "#2E8B57", apricot = "#FDD5B1", mahogany = "#CA3435",
    blue_violet = "#6456B7", green_yellow = "#F1E788", orange = "#FF8833",
    blue_gray = "#6699CC", plum = "#8E3179", peach = "#FFCBA4", yellow_green = "#9ACD32",
    red_violet = "#BB3385", yellow_orange = "#FFAE42", violet_blue = "#766EC8",
    goldenrod = "#DAA520", orchid = "#E29CD2", maize = "#F2C649",
    melon = "#FEBAAD", brick_red = "#CB4154", violet = "#8359A3",
    raw_umber = "#826644", salmon = "#FF91A4", bittersweet = "#FE6F5E",
    cadet_blue = "#A9B2C3", sepia = "#9E5B40", brown = "#AF593E",
    copper = "#B87333", silver = "#AAA9AD", burnt_sienna = "#E97451",
    olive_green = "#B5B35C", indian_red = "#CD5C5C", gray = "#8B8680",
    raw_sienna = "#D27D46", black = "#000000", white = "#FFFFFF"
  )),
  original = palette::palette(c(
    red = "#ED0A3F", yellow = "#FFFF00",
    blue = "#2EB4E6", green = "#008001", rose_pink = "#FF66CC", cobalt_blue = "#0047AB",
    venetian_red = "#C80815", ultramarine_blue = "#4166F5", medium_chrome_yellow = "#FCD667",
    flesh_tint = "#FFCBA4", dark_chrome_green = "#01786F", permanent_geranium_lake = "#E12C2C",
    purple = "#6A0DAD", orange = "#FF8833", celestial_blue = "#4997D0",
    gold = "#A57C00", permanent_magenta = "#F653A6", van_dyke_brown = "#664228",
    burnt_umber = "#8A3324", silver = "#AAA9AD", madder_lake = "#CC3336",
    olive_green = "#B5B35C", burnt_sienna = "#E97451", english_vermilion = "#CC474B",
    raw_sienna = "#D68A59", raw_umber = "#826644", copper = "#B87333",
    indian_red = "#CD5C5C", white = "#FFFFFF", black = "#000000"
  )),
  pearl = palette::palette(c(
    antique_gray = "#9F9F9F",
    butternut_squash = "#E74F00", snow_drift = "#F3F3F3", iridescent_indigo = "#3C32CD",
    black_pearl = "#3A3A3A", shooting_star = "#FFFF65", moonlit_pond = "#4F2CD0",
    sunset_shimmer = "#F79015", pink_luster = "#FFB2E7", ocean_foam = "#62C9D3",
    orange_peel = "#FF8021", red_satin = "#9F3434", cloudy_sky = "#548CD0",
    liquid_gold = "#FFD966", mango_puree = "#FF6137", leafy_canopy = "#94DDCB",
    hot_cocoa = "#8F482F", caribbean_sea = "#67CD95", pesto = "#5F7B4A",
    bubble_gum = "#DF9ACA", apple_orchard = "#BF3F3F", sea_glass = "#C4EA7F",
    berry_parfait = "#A43482", lavender_silk = "#6B4D82"
  )), pearl_brite = palette::palette(c(
    aqua = "#5FBED7", salmon = "#F1444A",
    cultured = "#F5F5F5", midnight = "#702670", sunny = "#F2F27A",
    ocean_blue = "#4F42B5", turquoise = "#3BBCD0", rose = "#F03865",
    key_lime = "#E8F48C", orchid = "#7B4259", ocean_green = "#48BF91",
    mandarin = "#F37A48", sunset = "#F1CC79", black_coral = "#54626F",
    caribbean_green = "#6ADA8E", mystic = "#D65282"
  )),
  silly_scents = palette::palette(c(
    yellow_green = "#C5E17A",
    red = "#ED0A3F", robins_egg_blue = "#00CCCC", mango_tango = "#E77200",
    sky_blue = "#76D7EA", spring_green = "#ECEBBD", maroon = "#C32148",
    blue_violet = "#6456B7", red_orange = "#FF681F", dandelion = "#FED85D",
    violet_red = "#F7468A", tickle_me_pink = "#FC80A5", orange = "#FF8833",
    gray = "#8B8680", chestnut = "#B94E48", tan = "#D99A6C"
  )),
  silver_swirls = palette::palette(c(
    aztec_gold = "#C39953",
    cosmic_cobalt = "#2E2D88", rusty_red = "#DA2C43", cerulean_frost = "#6D9BC3",
    misty_moss = "#BBB477", shiny_shamrock = "#5FA778", mystic_maroon = "#AD4379",
    pewter_blue = "#8BA8B7", cinnamon_satin = "#CD607E", polished_pine = "#5DA493",
    granite_gray = "#676767", glossy_grape = "#AB92B3", twilight_lavender = "#8A496B",
    green_sheen = "#6EAEA1", pearly_purple = "#B768A2", wintergreen_dream = "#56887D",
    quick_silver = "#A6A6A6", sugar_plum = "#914E75", lilac_luster = "#AE98AA",
    steel_teal = "#5F8A8B", copper_penny = "#AD6F69", rose_dust = "#9E5E6F",
    shadow_blue = "#778BA5", burnished_brown = "#A17A74"
  )),
  standard = palette::palette(c(
    red = "#ED0A3F", robin_s_egg_blue = "#00CCCC",
    inchworm = "#AFE313", blue_iii = "#0066FF", pink_flamingo = "#FC74FD",
    scarlet = "#FD0E35", green = "#01A638", lemon_yellow = "#FFFF9F",
    midnight_blue = "#003366", piggy_pink = "#FDD7E4", mango_tango = "#E77200",
    cerulean = "#02A4D3", canary = "#FFFF99", razzmatazz = "#E30B5C",
    navy_blue = "#0066CC", caribbean_green = "#00CC99", red_orange = "#FF681F",
    cool_mint = "#DDEBEC", outer_space = "#2D383A", wild_strawberry = "#FF3399",
    pacific_blue = "#009DC4", yellow = "#FBE870", tropical_rain_forest = "#00755E",
    sunset_orange = "#FE4C40", powder_blue = "#C0D5F0", jazzberry_jam = "#A50B5E",
    blue_green = "#0095B7", dandelion = "#FED85D", banana_mania = "#FBE7B2",
    pine_green = "#01796F", orange = "#FF8833", bluetiful = "#3C69E7",
    cotton_candy = "#FFB7D5", fuzzy_wuzzy = "#87421F", turquoise_blue = "#6CDAE7",
    teal_blue = "#008080", burnt_orange = "#FF7034", spring_green = "#ECEBBD",
    denim = "#1560BD", maroon = "#C32148", crayellow = "#F1D651",
    sky_blue = "#76D7EA", purple_heart = "#652DC1", orange_red = "#FF5349",
    aquamarine = "#95E0E8", mahogany = "#CA3435", mountain_meadow = "#1AB385",
    yellow_orange = "#FFAE42", lavender_ii = "#FBAED2", goldenrod = "#FCD667",
    green_blue = "#2887C8", brick_red = "#C62D42", shamrock = "#33CC99",
    apricot = "#FDD5B1", raw_umber = "#665233", carnation_pink = "#FFA6C9",
    violet_red = "#F7468A", maize = "#F2C649", cornflower = "#93CCEA",
    eggplant = "#614051", almond = "#EED9C4", jungle_green = "#29AB87",
    magenta = "#F653A6", green_yellow = "#F1E788", cerise = "#DA3287",
    periwinkle = "#C3CDE6", indigo = "#4F69C6", orange_yellow = "#F8D568",
    oatmeal = "#D9DAD2", royal_purple = "#6B3FA0", light_blue = "#8FD8D8",
    bittersweet = "#FE6F5E", plum = "#8E3179", peach = "#FFCBA4",
    vivid_violet = "#803790", timberwolf = "#D9D6CF", brown = "#AF593E",
    blue_violet = "#6456B7", tan = "#FA9D5A", red_violet = "#BB3385",
    thistle = "#D8BFD8", fern = "#63B76C", melon = "#FEBAAD", sepia = "#9E5B40",
    sea_green = "#93DFB8", chestnut = "#B94E48", purple_mountains_majesty = "#D6AEDD",
    macaroni_and_cheese = "#FFB97B", fuchsia = "#C154C1", yellow_green = "#C5E17A",
    violet_blue = "#766EC8", burnt_sienna = "#E97451", forest_green = "#5FA777",
    orchid = "#E29CD2", tickle_me_pink = "#FC80A5", granny_smith_apple = "#9DE093",
    shadow = "#837050", salmon = "#FF91A4", raw_sienna = "#D27D46",
    wisteria = "#C9A0DC", desert_sand = "#EDC9AF", asparagus = "#7BA05B",
    blush = "#DB5079", blue_gray = "#C8C8CD", vivid_tangerine = "#FF9980",
    violet_ii = "#8359A3", mulberry = "#C8509B", wild_blue_yonder = "#7A89B8",
    beaver = "#926F5B", pink_sherbert = "#F7A38E", blue_bell = "#9999CC",
    olive_green = "#B5B35C", mauvelous = "#F091A9", gold_ii = "#E6BE8A",
    lavender_i = "#BF8FCC", silver = "#C9C0BB", cadet_blue = "#A9B2C3",
    copper = "#DA8A67", antique_brass = "#C88A65", gray = "#8B8680",
    tumbleweed = "#DEA681", manatee = "#8D90A1", white = "#FFFFFF",
    black = "#000000"
  )),
  standard16 = palette::palette(c(
    red = "#ED0A3F",
    blue_iii = "#0066FF", yellow = "#FBE870", green = "#01A638",
    red_orange = "#FF681F", blue_green = "#0095B7", carnation_pink = "#FFA6C9",
    yellow_orange = "#FFAE42", blue_violet = "#6456B7", orange = "#FF8833",
    yellow_green = "#C5E17A", red_violet = "#BB3385", brown = "#AF593E",
    violet_ii = "#8359A3", white = "#FFFFFF", black = "#000000"
  )), standard24 = palette::palette(c(
    red = "#ED0A3F", blue_iii = "#0066FF",
    yellow = "#FBE870", green = "#01A638", scarlet = "#FD0E35", cerulean = "#02A4D3",
    apricot = "#FDD5B1", red_orange = "#FF681F", blue_green = "#0095B7",
    dandelion = "#FED85D", carnation_pink = "#FFA6C9", indigo = "#4F69C6",
    orange = "#FF8833", violet_red = "#F7468A", green_yellow = "#F1E788",
    blue_violet = "#6456B7", yellow_orange = "#FFAE42", red_violet = "#BB3385",
    yellow_green = "#C5E17A", brown = "#AF593E", violet_ii = "#8359A3",
    gray = "#8B8680", white = "#FFFFFF", black = "#000000"
  )),
  standard32 = palette::palette(c(
    red = "#ED0A3F", blue_iii = "#0066FF",
    yellow = "#FBE870", green = "#01A638", scarlet = "#FD0E35", cerulean = "#02A4D3",
    apricot = "#FDD5B1", red_orange = "#FF681F", blue_green = "#0095B7",
    sky_blue = "#76D7EA", dandelion = "#FED85D", violet_red = "#F7468A",
    orange = "#FF8833", indigo = "#4F69C6", carnation_pink = "#FFA6C9",
    timberwolf = "#D9D6CF", yellow_orange = "#FFAE42", blue_violet = "#6456B7",
    green_yellow = "#F1E788", red_violet = "#BB3385", brown = "#AF593E",
    wisteria = "#C9A0DC", chestnut = "#B94E48", peach = "#FFCBA4",
    yellow_green = "#C5E17A", violet_ii = "#8359A3", melon = "#FEBAAD",
    tan = "#FA9D5A", cadet_blue = "#A9B2C3", gray = "#8B8680", white = "#FFFFFF",
    black = "#000000"
  )),
  standard64 = palette::palette(c(
    red = "#ED0A3F",
    robin_s_egg_blue = "#00CCCC", blue_iii = "#0066FF", dandelion = "#FED85D",
    scarlet = "#FD0E35", green = "#01A638", spring_green = "#ECEBBD",
    red_orange = "#FF681F", cerulean = "#02A4D3", wild_strawberry = "#FF3399",
    pacific_blue = "#009DC4", yellow = "#FBE870", turquoise_blue = "#6CDAE7",
    burnt_orange = "#FF7034", blue_green = "#0095B7", lavender_ii = "#FBAED2",
    mahogany = "#CA3435", sky_blue = "#76D7EA", orange = "#FF8833",
    apricot = "#FDD5B1", brick_red = "#C62D42", periwinkle = "#C3CDE6",
    indigo = "#4F69C6", yellow_orange = "#FFAE42", plum = "#8E3179",
    green_yellow = "#F1E788", cornflower = "#93CCEA", violet_red = "#F7468A",
    goldenrod = "#FCD667", blue_violet = "#6456B7", carnation_pink = "#FFA6C9",
    sepia = "#9E5B40", magenta = "#F653A6", timberwolf = "#D9D6CF",
    forest_green = "#5FA777", brown = "#AF593E", sea_green = "#93DFB8",
    red_violet = "#BB3385", peach = "#FFCBA4", chestnut = "#B94E48",
    purple_mountains_majesty = "#D6AEDD", bittersweet = "#FE6F5E",
    granny_smith_apple = "#9DE093", asparagus = "#7BA05B", yellow_green = "#C5E17A",
    violet_ii = "#8359A3", melon = "#FEBAAD", tan = "#FA9D5A", wisteria = "#C9A0DC",
    burnt_sienna = "#E97451", macaroni_and_cheese = "#FFB97B", raw_sienna = "#D27D46",
    tickle_me_pink = "#FC80A5", salmon = "#FF91A4", cadet_blue = "#A9B2C3",
    olive_green = "#B5B35C", gray = "#8B8680", silver = "#C9C0BB",
    mauvelous = "#F091A9", gold_ii = "#E6BE8A", tumbleweed = "#DEA681",
    white = "#FFFFFF", black = "#000000"
  )),
  star_brite = palette::palette(c(
    "#F898C8", "#212321", "#00D8A0",
    "#E63300", "#1AADE0", "#FA7A00", "#AD0000", "#0069BD", "#CDDC39",
    "#E91E63", "#004C71", "#DE6900", "#1BA77B", "#333399", "#D62518",
    "#56418C"
  ))
)

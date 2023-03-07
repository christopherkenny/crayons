library(rvest)
library(tidyverse)

# list of colors ----
wiki <- read_html('https://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors')
tbls <- html_elements(wiki, '.wikitable') %>% lapply(html_table)

standard <- tbls[[1]] %>%
  select(Name, starts_with('Hexadecimal'), ends_with('Box')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  rename(
    box_16 = `16-box`,
    box_24 = `24-box`,
    box_32 = `32-box`,
    box_64 = `64-box`
  ) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7),
    across(starts_with('box'), \(x) x == 'Yes')
  ) %>%
  filter(hexadecimal != '')

fluorescent <- tbls[[2]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

# tbls[[3]] = fabric

silver_swirls <- tbls[[4]] %>%
  unlist() %>%
  unname() %>%
  enframe(name = 'id') %>%
  mutate(
    name = ifelse(id %% 2 == 1, value, NA_character_),
    hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
  ) %>%
  fill(hexadecimal, .direction = 'up') %>%
  filter(!is.na(name)) %>%
  select(name, hexadecimal) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

multicultural <- tbls[[5]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

magic_scent <- tbls[[6]] %>%
  unlist() %>%
  unname() %>%
  enframe(name = 'id') %>%
  mutate(
    name = ifelse(id %% 2 == 1, value, NA_character_),
    hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
  ) %>%
  fill(hexadecimal, .direction = 'up') %>%
  filter(!is.na(name)) %>%
  select(name, hexadecimal) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '\\(.+?\\)', ''),
    name = str_replace_all(name, '\\)', ''),
    name = str_squish(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

gem_tones <- tbls[[7]] %>%
  unlist() %>%
  unname() %>%
  enframe(name = 'id') %>%
  mutate(
    name = ifelse(id %% 2 == 1, value, NA_character_),
    hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
  ) %>%
  fill(hexadecimal, .direction = 'up') %>%
  filter(!is.na(name)) %>%
  select(name, hexadecimal) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '\'', ''),
    name = str_squish(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

# should this be a gradient? it's two cols w/ similar outputs for some
# changeables <- tbls[[8]] %>%
#   unlist() %>%
#   unname() %>%
#   enframe(name = 'id') %>%
#   mutate(
#     name = ifelse(id %% 2 == 1, value, NA_character_),
#     hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
#   ) %>%
#   fill(hexadecimal, .direction = 'up') %>%
#   filter(!is.na(name)) %>%
#   select(name, hexadecimal) %>%
#   mutate(
#     name = tolower(name),
#     name = str_squish(name),
#     name = str_replace_all(name, '[^a-z]', '_'),
#     hexadecimal = str_sub(hexadecimal, 1, 7)
#   ) %>%
#   filter(hexadecimal != '', !duplicated(name))

color_n_smell <- tbls[[9]] %>%
  unlist() %>%
  unname() %>%
  enframe(name = 'id') %>%
  mutate(
    name = ifelse(id %% 2 == 1, value, NA_character_),
    hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
  ) %>%
  fill(hexadecimal, .direction = 'up') %>%
  filter(!is.na(name)) %>%
  select(name, hexadecimal) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '\'', ''),
    name = str_replace_all(name, '\\(.+?\\)', ''),
    name = str_replace_all(name, '\\)', ''),
    name = str_squish(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

star_brite <- tbls[[10]] %>%
  select(hexadecimal = `Hex Code`)

# tbls[[11]] = Color Mix-Up multi-color


pearl_brite <- tbls[[12]] %>%
  unlist() %>%
  unname() %>%
  enframe(name = 'id') %>%
  mutate(
    name = ifelse(id %% 2 == 1, value, NA_character_),
    hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
  ) %>%
  fill(hexadecimal, .direction = 'up') %>%
  filter(!is.na(name)) %>%
  select(name, hexadecimal) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '\'', ''),
    name = str_replace_all(name, '\\(.+?\\)', ''),
    name = str_replace_all(name, '\\)', ''),
    name = str_squish(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    name = str_replace_all(name, '_pearl', ''),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

# tbls[[13]] = glitter
# tbls[[14]] = glitter 2019 (no hexadecimals)

construction_paper <- tbls[[15]] %>%
  select(hexadecimal = `Hex Code`)

metallic_fx <- tbls[[16]] %>%
  select(name = Name, hexadecimal = `Hex Code`) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

gel_fx <- tbls[[17]] %>%
  select(hexadecimal = `Hex Code`)

pearl <- tbls[[18]] %>%
  select(name = Name, hexadecimal = Hex) %>%
  mutate(
    name = tolower(name),
    name = stringi::stri_trans_general(name, id = 'Latin-ASCII'), # remove accents
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

# tbls[[19]] = neon (no hexadecimals)

colors_of_the_world <- tbls[[20]] %>%
  select(name = Name, hexadecimal = Hex) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

silly_scents <- tbls[[21]] %>%
  select(name = `Color Name`, hexadecimal = `Hex Code`) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '\'', ''),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

heads_n_tails <- tbls[[22]] %>%
  unlist() %>%
  unname() %>%
  enframe(name = 'id') %>%
  mutate(
    name = ifelse(id %% 2 == 1, value, NA_character_),
    hexadecimal = ifelse(id %% 2 == 0, value, NA_character_)
  ) %>%
  fill(hexadecimal, .direction = 'up') %>%
  filter(!is.na(name)) %>%
  select(name, hexadecimal) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

billionth <- tbls[[23]] %>%
  select(name = Crayon, hexadecimal = `Hexadecimal code`) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

mini_twistables <- tbls[[24]] %>%
  select(name = Name, hexadecimal = `Hex Code`) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '\'', ''),
    name = str_replace_all(name, '\\(.+?\\)', ''),
    name = str_replace_all(name, '\\)', ''),
    name = str_squish(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
  ) %>%
  filter(hexadecimal != '')

# tbls[[25]] = true_to_life

# History of crayola crayons ----
wiki_h <- read_html('https://en.wikipedia.org/wiki/History_of_Crayola_crayons')
tbls_h <- html_elements(wiki_h, '.wikitable') %>% lapply(html_table)

original <- tbls_h[[1]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7),
    across(starts_with('box'), \(x) x == 'Yes')
  ) %>%
  filter(hexadecimal != '')

munsell <- tbls_h[[2]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7),
    across(starts_with('box'), \(x) x == 'Yes')
  ) %>%
  filter(hexadecimal != '')

no_48 <- tbls_h[[3]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7),
    across(starts_with('box'), \(x) x == 'Yes')
  ) %>%
  filter(hexadecimal != '')

no_64 <- tbls_h[[4]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7),
    across(starts_with('box'), \(x) x == 'Yes')
  ) %>%
  filter(hexadecimal != '')

modern <- tbls_h[[5]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7),
    across(starts_with('box'), \(x) x == 'Yes')
  ) %>%
  filter(hexadecimal != '')


# save it ----
crayons <- list(
  billionth = deframe(billionth),
  color_n_smell = deframe(color_n_smell),
  colors_of_the_world = deframe(colors_of_the_world),
  construction_paper = deframe(construction_paper),
  fluorescent = deframe(fluorescent),
  gel_fx = deframe(gel_fx),
  gem_tones = deframe(gem_tones),
  heads_n_tails = deframe(heads_n_tails),
  magic_scent = deframe(magic_scent),
  metallic_fx = deframe(metallic_fx),
  mini_twistables = deframe(mini_twistables),
  modern = deframe(modern),
  munsell = deframe(munsell),
  multicultural = deframe(multicultural),
  no_48 = deframe(no_48),
  no_64 = deframe(no_64),
  original = deframe(original),
  pearl = deframe(pearl),
  pearl_brite = deframe(pearl_brite),
  silly_scents = deframe(silly_scents),
  silver_swirls = deframe(silver_swirls),
  standard = deframe(select(standard, 1:2)),
  standard16 = deframe(select(filter(standard, box_16), 1:2)),
  standard24 = deframe(select(filter(standard, box_24), 1:2)),
  standard32 = deframe(select(filter(standard, box_32), 1:2)),
  standard64 = deframe(select(filter(standard, box_64), 1:2)),
  star_brite = deframe(star_brite)
)

crayons <- lapply(crayons, function(x) {
  class(x) <- c('palette', 'character')
  x
})

dput(crayons) #%>% styler::style_text()


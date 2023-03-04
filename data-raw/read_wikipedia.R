library(rvest)
library(tidyverse)

wiki <- read_html('https://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors')
tbls <- html_elements(wiki, '.wikitable') %>% lapply(html_table)

standard <- tbls[[1]] %>%
  select(Name, starts_with('Hexadecimal')) %>%
  rename_with(.fn = \(x) tolower(str_sub(x, end = 11))) %>%
  mutate(
    name = tolower(name),
    name = str_replace_all(name, '[^a-z]', '_'),
    hexadecimal = str_sub(hexadecimal, 1, 7)
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

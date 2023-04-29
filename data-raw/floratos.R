## code to prepare `floratos` dataset goes here

library(sf)
library(dplyr)
library(readr)
library(checkRlistit)
library(here)

### read in csv data as sf object with datum epsg:32632
floratos_nost <- read_csv(here("data-raw","spacetime_tos.csv"))
u <- unique(floratos$combination)
closest_names <- checkRlistit::nameStand(u)
floratos <- dplyr::inner_join(floratos_nost,closest_names,
                                   by = c("combination" = "myname")) %>%
  dplyr::filter(match_type != "unmatched") %>%
  dplyr::left_join(ckl_names, by = c("closest_match" = "sinonimo")) %>%
  dplyr::left_join(floratos_ckl, by = c("entita" = "entita")) %>%
  dplyr::select(combination,entita,anno_reperto,
                lat_wgs84,lon_wgs84,
                settore,epoca,
                p_status,a_status)

mycrs <- ns_epsg()

floratos_sf <- sf::st_as_sf(floratos,
                         coords = c("lon_wgs84","lat_wgs84"),
                         crs = mycrs,
                         remove = FALSE)
sf::st_crs(floratos_sf)$wkt <- gsub("°|º", "\\\u00b0", st_crs(floratos_sf)$wkt)

usethis::use_data(floratos, floratos_sf, overwrite = TRUE)

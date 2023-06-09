## code to prepare `floratos_north` dataset goes here
library(sf)
library(dplyr)
library(readr)
library(checkRlistit)
library(here)

### read in csv data as sf object with datum epsg:32632
floratos_north <- read_csv(here("data-raw","floratos_north.csv"))
u <- unique(floratos_north$combination)
closest_names <- checkRlistit::nameStand(u)
floratos_north <- dplyr::left_join(floratos_north,closest_names,
                                   by = c("combination" = "myname"),
                                   keep = TRUE) %>%
  dplyr::left_join(floratos_ckl, by = c("closest_match" = "entita"))

floratos_north <- sf::st_as_sf(floratos_north,
                               coords = c("lon_wgs84","lat_wgs84"),
                               crs = 32632,
                               remove = FALSE)
sf::st_crs(floratos_north)$wkt <- gsub("°|º", "\\\u00b0", st_crs(floratos_north)$wkt)

usethis::use_data(floratos_north, overwrite = TRUE)

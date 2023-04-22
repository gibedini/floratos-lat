## code to prepare `floratos_south` dataset goes here
library(sf)
library(dplyr)
library(readr)
library(checkRlistit)
library(here)

### read in csv data as sf object with datum epsg:32632
floratos_south <- read_csv(here("data-raw","floratos_south.csv")) %>%
  st_as_sf(coords = c("lon_wgs84","lat_wgs84"),crs = 32632)
st_crs(floratos_south)$wkt <- gsub("°|º", "\\\u00b0", st_crs(floratos_south)$wkt)
u <- unique(floratos_south$combination)
closest_names <- checkRlistit::nameStand(u)
floratos_south <- dplyr::left_join(floratos_south,closest_names,
                                   by = c("combination" = "myname"),
                                   keep = TRUE) %>%
  dplyr::left_join(floratos_ckl, by = c("closest_match" = "entita"))

usethis::use_data(floratos_south, overwrite = TRUE)

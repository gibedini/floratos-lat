## code to prepare `floratos_south` dataset goes here
library(sf)
library(dplyr)
library(readr)
### read in csv data as sf object with datum epsg:32632
floratos_south <- read_csv(here("data-raw","floratos_south.csv")) %>%
  st_as_sf(coords = c("lon_wgs84","lat_wgs84"), crs = 32632)
st_crs(floratos_south)$wkt <- gsub("°|º", "\\\u00b0", st_crs(floratos_south)$wkt)
usethis::use_data(floratos_south, overwrite = TRUE)

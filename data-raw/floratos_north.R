## code to prepare `floratos_north` dataset goes here
library(sf)
library(dplyr)
library(readr)
### read in csv data as sf object with datum epsg:32632
floratos_north <- read_csv(here("data-raw","floratos_north.csv")) %>%
  st_as_sf(coords = c("lon_wgs84","lat_wgs84"),crs = 32632)
st_crs(floratos_north)$wkt <- gsub("°|º", "\\\u00b0", st_crs(floratos_north)$wkt)

usethis::use_data(floratos_north, overwrite = TRUE)

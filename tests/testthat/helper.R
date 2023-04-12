#' Helper functions for testing
#'
#' @return Objects used solely for testing
#' @export
#'
#' @examples No examples needed
#'
test_df <- function() {
  lon <- c(44.1030, 44.1528)
  lat <- c(10.0342, 10.1028) ### lon, lat in wgs84 reference system
  return(data.frame(lon,lat))
}

test_poly_nocrs <- function() {
  t <- test_df() ### dataframe containing x (=lon), y (=lat) coordinates in wgs84 reference system
  ix <- c(1,2,2,1,1) ### index to x coordinates of t
  iy <- c(1,1,2,2,1) ### index to y coordinates of t
  ### the indices correspond to the coordinates of a quadrilateral bounded by the
  ### lowest and highest values of lon, lat
  polyg <- sf::st_polygon(list(cbind(t$lon[ix],t$lat[iy]))) ### polygon with no CRS specification
  return(polyg)
}

test_poly_4326 <- function() {
  t <- test_poly_nocrs()
  t <- sf::st_sfc(t,crs= 4326)
  return(t)
}

test_poly_projcrs <- function() {
  t <- test_poly_4326()
  ### transforms it into the project CRS (ESPG:32632)
  return(sf::st_transform(t,ns_epsg()))
}

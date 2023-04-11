#' Area of a polygon
#'
#' @param sf_polyg a polygon of class sf, sfc with projected crs
#'
#' @return numeric value of the polygon area in square meters
#' @export ns_area
#'
#' @examples
#' lon <- c(44.1030, 44.1528)
#' lat <- c(10.0342, 10.1028) ### lon, lat in wgs84 reference system
#' mycoords <- data.frame(lon,lat)
#' polyg <- sf::st_polygon(list(cbind(mycoords$lon[c(1,2,2,1,1)], mycoords$lat[c(1,1,2,2,1)])))
#' polyc <- sf::st_sfc(polyg, crs = 4326) ### set appropriate crs
#' sf::st_transform(polyc, crs = 32632) ### transform to metric crs appropriate for area
#' a <- ns_area(polyc) ### returns area in square meters
#'
ns_area <- function(sf_polyg) {
  return(sf::st_area(sf_polyg))
}

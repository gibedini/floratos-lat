% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ns_area.R
\name{ns_area}
\alias{ns_area}
\title{Area of a polygon}
\usage{
ns_area(sf_polyg)
}
\arguments{
\item{sf_polyg}{a polygon of class sf, sfc with projected crs}
}
\value{
numeric value of the polygon area in square meters
}
\description{
Area of a polygon
}
\examples{
lon <- c(44.1030, 44.1528)
lat <- c(10.0342, 10.1028) ### lon, lat in wgs84 reference system
mycoords <- data.frame(lon,lat)
polyg <- sf::st_polygon(list(cbind(mycoords$lon[c(1,2,2,1,1)], mycoords$lat[c(1,1,2,2,1)])))
polyc <- sf::st_sfc(polyg, crs = 4326) ### set appropriate crs
polyc <- sf::st_transform(polyc, crs = 32632) ### transform to metric crs appropriate for area
a <- ns_area(polyc) ### returns area in square meters

}

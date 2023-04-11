test_that("area is expressed in square meters", {
  lon <- c(44.1030, 44.1528)
  lat <- c(10.0342, 10.1028) ### lon, lat in wgs84 reference system
  mycoords <- data.frame(lon,lat)
  polyg <- sf::st_polygon(list(cbind(mycoords$lon[c(1,2,2,1,1)], mycoords$lat[c(1,1,2,2,1)])))
  polyc <- sf::st_sfc(polyg, crs = 4326) ### set appropriate crs
  polyc <- sf::st_transform(polyc, crs = 32632) ### transform to metric crs appropriate for area
  expect_equal(class(ns_area(polyc)),"units")
})

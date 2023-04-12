test_that("ns_area() rejects malformed polygons", {
  expect_error(ns_area(test_df()),"Malformed polygon passed to ns_area()")
})

test_that("ns_area() rejects polygons with no CRS", {
  expect_error(ns_area(test_poly_nocrs()),"No CRS associated to the polygon passed to ns_area()")
})

test_that("ns_area warns about CRS transformation", {
  expect_warning(ns_area(test_poly_4326()),"Original CRS of passed polygon.+transformed to.+")
})

test_that("ns_area provides area in square meters", {
  expect_equal(class(ns_area(test_poly_projcrs())),"units")
})

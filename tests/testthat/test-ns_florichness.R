test_that("return dataframe has six columns", {
  expect_equal(ncol(ns_florichness(floratos_south,"south")), 2)
})

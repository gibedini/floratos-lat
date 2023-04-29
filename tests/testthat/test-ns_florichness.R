test_that("return dataframe has two columns", {
  expect_equal(ncol(ns_florichness(floratos,"global")), 2)
})

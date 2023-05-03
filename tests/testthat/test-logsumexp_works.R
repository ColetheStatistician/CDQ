test_that("logsumexp_works_test", {
  expect_equal(log_summed_exps(1:2000), 2000.459, tolerance = 0.001)
})

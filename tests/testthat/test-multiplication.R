test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("addition works", {
  expect_equal(2 + 2, 4)
})

test_that("groups are made correctly", {
  group <- make_groups(c("Anna", "Femke", "Luc", "Stefan"))
  expect_true(ncol(group)== 2)
})

test_that("groups are made correctly", {
  group <- make_groups(c("Anna", "Femke", "Luc", "Stefan"))
  expect_true(ncol(group)== 2)
  expect_false(nrow(group)== 4)
  expect_equal(class(group)[1], "matrix")
})

test_that("groups are made correctly", {
  group <- make_groups(c("Anna", "Femke", "Luc", "Stefan", "pipo", "mamalou"))
  expect_true(ncol(group)== 2)
  expect_false(nrow(group)== 2)
  expect_equal(class(group)[1], "matrix")
})

test_that("groups are made correctly", {
  group <- make_groups(c("Anna", "Femke", "Stefan", "luc", "pipo", "mamalou"))
  expect_true(ncol(group)== 2)
  expect_false(nrow(group)== 2)
  expect_equal(class(group)[1], "matrix")
})


# to load data for a test
# people <- c("anna", "femke","pipo", "mamalou")
# save(people, file="tests/testthat/testdata.Rda")
# load(file="testdata.Rda")
# you can only save a Rda file only, not csv or something
# but I can save de edgelists data frames etc that I create
# as a Rda

# the covr:: report() does not work if your tests fail

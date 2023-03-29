test_that("calc_degrees_goW works output size", {
  load(file="./testdata_edges.Rda") #./ means take this file
  load(file="./testdata_nodes.Rda")
  node_calc <- calc_degrees_goW(rutte_p2_edgelist, rutte_p2_nodelist)
  expect_true(ncol(node_calc)== 14)
})

test_that("calc_degrees_goW works", {
  load(file="./testdata_edges.Rda")
  load(file="./testdata_nodes.Rda")
  node_calc <- calc_degrees_goW(rutte_p2_edgelist, rutte_p2_nodelist)
  expect_true(ncol(node_calc)== 14,
  expect_true(all(node_calc$indegree + node_calc$outdegree == node_calc$degree)),
  expect_true(all(node_calc$w_indegree + node_calc$w_outdegree == node_calc$w_degree)))
})

# the code gave 74 times true, but expect_true expects a single true, not 74.
# By using the all(), you say you expect all trues
# we will learn a better way to deal with data
# to load data for a test
# people <- c("anna", "femke","pipo", "mamalou")
# save(people, file="tests/testthat/testdata.Rda")
# load(file="testdata.Rda")
# you can only save a Rda file only, not csv or something
# but I can save de edgelists data frames etc that I create
# as a Rda

# the covr:: report() does not work if your tests fail
#rm(node_calc_rutte_p2)

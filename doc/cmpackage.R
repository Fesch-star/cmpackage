## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(cmpackage)

## -----------------------------------------------------------------------------

node_calc <- calc_degrees_goW(rutte_p2_edgelist, rutte_p2_nodelist)
node_calc_Wdegree <- node_calc[with(node_calc, order("w_degree")),]

node_calc_Wdegree[1:10, c(2, 12)]


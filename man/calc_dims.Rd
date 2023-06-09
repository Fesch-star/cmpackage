% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_dims.R
\name{calc_dims}
\alias{calc_dims}
\title{calc_dims}
\usage{
calc_dims(nodecalc_valrun_nr, name, period)
}
\arguments{
\item{nodecalc_valrun_nr, }{This is the output of the evaluation_loop function}

\item{name, }{name of actor/speaker on whose ideas the CM is based}

\item{period, }{period of the sources on which the CM is based}
}
\value{
dataframe
}
\description{
This function will provide you with a indication of how a cognitive map scores
in terms of a certain paradigm (see Van Esch & Snellens, 2023). It requires
you to run the calc_degrees_goW function and evaluation_loop_apply function
first. In addition, it requires that in the initial nodeslist all causal and
effect concepts in the cognitive map are categorised as belonging to a paradigm
or not. This function will calculate the average saliency of all the concepts
that are assigned to a category relative to the total saliency of all concepts
in the cognitive map
}
\examples{
x
}

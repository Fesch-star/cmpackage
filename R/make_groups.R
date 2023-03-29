#' Make_groups
#'
#' Makes groups of two, randomly, from a list of names.
#' Has a safeguard by which it stops is there is an
#' Uneven number of people in the list
#'
#' @param names
#'
#' @return A two column matrix of names
#' @export
#'
#' @examples x
#'
make_groups <- function(names) {
  if(length(names)%%2 > 0) {
    stop("Uneven number of people")
  }
  shuffled <- matrix(sample(names), ncol = 2)
  return(shuffled)
}


group_my_friends <- function(){
  friends <-  c("Thijs", "Eva", "Pablo", "Malte")
  make_groups(friends)
}

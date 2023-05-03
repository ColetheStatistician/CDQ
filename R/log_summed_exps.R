#' log_summed_exps
#'
#' @param to_sum A numeric vector.
#' @returns Natural logarithm of the sum of exponentiated values of vector
#' @examples
#' log_summed_exps(c(1, 2, 3))
#' @import ggplot2, dplyr, magrittr, pacman
#' @export

log_summed_exps <- function(to_sum) {
  # log(sum(exp(x))) = x_(n) + log(1 + sum_{j=2}^n exp(x_j - x_(n)))

  # get nth order statistic
  x_n <- max(to_sum)
  # order everything and exclude nth order statistic
  sorted_to_sum <- sort(to_sum)[-length(to_sum)]
  # use formula
  summed <- x_n + log(1 + sum(exp(sorted_to_sum - x_n)))

  return(summed)
}

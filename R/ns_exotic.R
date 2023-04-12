#' Exotic status categories
#'
#' @return A dataframe with two columns and four rows, containing
#' keys and definitions of exotic status categories acknowledged in floratosLatGr package
#'
#' @export ns_exotic
#'
#' @examples
#' ns_exotic()
ns_exotic <- function() {
  mydefs <- c("nativa","esotica casuale","esotica naturalizzata","esotica invasiva")
  mykeys <- c("native","casual alien","naturalized alien","invasive alien")
  return(data.frame(defs = mydefs, keys = mykeys))
}

#' Calculate floristi richness from occurrence records
#'
#' @param ns_sf a dataframe with at least two columns, viz. closest_match and a_status.
#' Column \code{closest_match} contains scientific names standarised according the
#' Checklist of the Italian flora. Column \code{a_status} contain the alien status
#' according to the same Checklist.
#' @param ns_label a character string to serve as label for the data in the second column
#' of the output dataframe.
#'
#' @return a dataframe with six rows and two columns containing number of records,
#' number of species, number of native, and number of casual, naturalised, and invasive aliens.
#' @export ns_florichness
#'
#' @examples ns_florichness(floratos_south,"south")
ns_florichness <- function(ns_sf,ns_label) {
  ns_df <- sf::st_drop_geometry(ns_sf)
  nsf_a <- tibble::tibble(param = c("nrec","nspe"),
                        !!(ns_label) := c(nrow(ns_df),length(unique(ns_df$closest_match))))
  nsf_b <- dplyr::distinct(ns_df,closest_match,a_status) %>%
    dplyr::group_by(a_status) %>%
    dplyr::summarise(n=dplyr::n()) %>%
    dplyr::rename(param = a_status,!!(ns_label) := n)
  return(dplyr::union(nsf_a,nsf_b))
}


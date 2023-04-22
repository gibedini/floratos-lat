#' Floristic richness
#'
#' @param ns_df a dataframe with at least two columns, viz. combination and esotic
#'
#' @return a dataframe with one row and five columns containing number of records,
#' number of species, number of native, and number of casual, naturalised, and invasive aliens.
#' @export ns_florichness
#'
#' @examples ns_florichness(floratos_south)
ns_florichness <- function(ns_df) {
  exot_df <- ns_exotic()
  nrecs <- nrow(ns_df)
  spec_df <- data.frame(combination = unique(ns_df$combination))
  spec_ckl <- dplyr::inner_join(spec_df,floratos_ckl, by = c("combination" = "entita"))
  spec_anti <- dplyr::anti_join(spec_df,floratos_ckl, by = c("combination" = "entita"))
  nspec <- length(unique(ns_df$combination))
  nnative <- unicomb(ns_df,exot_df$defs[1])
  ncas <-  unicomb(ns_df, exot_df$defs[2])
  nnatur <-  unicomb(ns_df, exot_df$defs[3])
  ninv <-  unicomb(ns_df, exot_df$defs[4])
  return(data.frame(n_of_recs = nrecs,n_of_species = nspec,
                    native = nnative,casual_alien = ncas,
                    naturalized = nnatur, invasive_alien = ninv))
}

unicomb <- function(d,e) {
  dx <- d[d$esotic == e,]
  return(length(unique(dx$combination)))
}

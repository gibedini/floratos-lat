florichness <- function(ns_df) {
  exot_df <- ns_exotic()
  nrecs <- nrow(ns_df)
  nspec <- length(unique(ns_df$combination))
  nnative <-  length(unique(ns_df$combination[ns_df$esotic == exotic$defs[1]]))
  ncas <-  length(unique(ns_df$combination[ns_df$esotic == exotic$defs[2]]))
  nnatur <-  length(unique(ns_df$combination[ns_df$esotic == exotic$defs[3]]))
  ninv <-  length(unique(ns_df$combination[ns_df$esotic == exotic$defs[4]]))
  return(data.frame(n_of_recs = nrecs,n_of_species = nspec,
                    native = nnative,casual_alien = ncas,
                    naturalized = nnatur, invasive_alien = ninv))
}

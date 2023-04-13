#' Data included in floratosLatGr
#'
#' A dataframe containing floristic data for the species growing in Tuscany.
#' The data is grabbed from the Checklist of the Italian flora
#'
#' @format A data frame with nine columns and 4925 records:
#' \describe{
#'   \item{codice_unico}{unique identifier in the Checklist}
#'   \item{famiglia_checklist}{botanical family}
#'   \item{END}{endemic? (E = Italian endemic taxon, blank = not endemic}
#'   \item{C}{cryptogenic? (C = cryptogenic, blank = not cryptogenic}
#'   \item{ESO}{exotic? }
#'   \item{entita}{scientific name at specific or infraspecific rank}
#'   \item{p_status}{record type (P = present; NP = not present; D = doubtful;
#'                  NC = unconfirmed; EX = extinct)}
#'   \item{lista_rossa}{national iucn red list category}
#'   \item{a_status}{alien status (A = alien; C = cryptogenic; A CAS = casual alien;
#'                   A INV = invasive alien; A NAT = naturalised alien)}
#' }
"floratos_ckl"

#' Data included in floratosLatGr
#'
#' One of two datasets containing the georeferenced floristic records for northern
#' and southern Tuscany, respectively
#'
#' @format Both data frames share the same structure with 18 columns and 253777 (floratos_north) or 117457 (floratos_south) records:
#' \describe{
#'   \item{combination}{a character string, current scientific name as per Wikiplantbase record}
#'   \item{anno_reperto}{a character string, year of record (four digits)}
#'   \item{tipo_reperto}{a single character string, record type (O = direct observation, B = bibliographic record, H = herbarium record, P = published herbarium record)}
#'   \item{tipo_segnalazione}{a character string, record qualification (presenza = presence, dubbia = doubtful, esclusione = exclusion}
#'   \item{esotic}{a character string, native or alien status as per Wikiplantbase record}
#'   \item{geometry}{metric coordinates, datum epsg:32632}
#'   \item{myname}{a character string, name of the original record (currently the same as column \code{combination})}
#'   \item{closest_match}{a character string, the standardised name according to the Checklist of the Italian Flora}
#'   \item{distance}{an integer number, the Levenshtein distance between \code{myname} and \code{closest_match}}
#'   \item{match_type}{a character string, the type of match between \code{myname} and \code{closest_match}}
#'   \item{codice_unico}{a number, the unique identifier of \code{closest_match} within the Checklist of the Italian Flora}
#'   \item{famiglia_checklist}{a character string, the botanical family}
#'   \item{END}{a single character string, E = Italian endemic species (or blank for non endemic species)}
#'   \item{C}{a single character string, C = culton, F = feral}
#'   \item{ESO}{a single character string, the exotic status as per the Checklist: A = Archeophyte, N = Neophyte, blank = native }
#'   \item{lista_rossa}{a character string, the IUCN national red list category}
#'   \item{p_status}{a one- or two-character string, the record qualificaton as per the Checklist: P = present, NC = unconfirmed, NP = wrong record, D = doubtful record, EX = extinct species}
#'   \item{a_status}{a character string, the alien status as per the Checklist: A = alien; A INV = invasive alien; A NAT = naturalised alien; A CAS = casual alien; C = cryptogenic species}
#' }
"floratos_north"

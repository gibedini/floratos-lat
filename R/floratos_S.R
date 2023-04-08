#' Data included in floratosLatGr
#'
#' One of two datasets containing the georeferenced floristic records for northern
#' and southern Tuscany, respectively
#'
#' @format Both data frames share the same structure with six columns and 253777 (floratos_north) or 117457 (floratos_south) records:
#' \describe{
#'   \item{combination}{current scientific name according to the Checklist of the Italian flora}
#'   \item{anno_reperto}{year of record}
#'   \item{tipo_reperto}{record type (O = direct observation, B = bibliographic record, H = herbarium record, P = published herbarium record)}
#'   \item{tipo_segnalazione}{record qualification (presenza = presence, dubbia = doubtful, esclusione = exclusion}
#'   \item{esotic}{native or alien status}
#'   \item{geometry}{metric coordinates, datum epsg:32632}
#' }
"floratos_south"

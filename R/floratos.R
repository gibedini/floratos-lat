#' Data included in floratosLatGr
#'
#' A dataset containing the georeferenced floristic records for Tuscany
#'
#' @format  8 columns and 358848 records:
#' \describe{
#'   \item{entita}{a character string, current scientific name as per Checklist of the Italian flora}
#'   \item{anno_reperto}{a character string, year of record (four digits)}
#'   \item{lat_wgs84}{a number, the latitude of the record (decimal degrees, epsg:4326)}
#'   \item{lon_wgs84}{a number, the longitude of the record (decimal degrees, epsg:4326)}
#'   \item{settore}{a character string, either "north" (if latitude of record > 43.35) or "south"}
#'   \item{epoca}{a character string, either "pre" 1950 or "post"}
#'   \item{p_status}{a one- or two-character string, the record qualificaton as per the Checklist: P = present, NC = unconfirmed, NP = wrong record, D = doubtful record, EX = extinct species}
#'   \item{a_status}{a character string, the alien status as per the Checklist: A = alien; A INV = invasive alien; A NAT = naturalised alien; A CAS = casual alien; C = cryptogenic species}
#' }
"floratos"

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/floratos_sf.R
\docType{data}
\name{floratos_sf}
\alias{floratos_sf}
\title{Georeferenced floristic records for Tuscany}
\format{
10 columns and 358848 records:
\describe{
\item{combination}{a character string, original scientific name as recorded in Wikiplantbase #Toscana}
\item{entita}{a character string, current scientific name as per Checklist of the Italian flora}
\item{anno_reperto}{a character string, year of record (four digits)}
\item{lat_wgs84}{a number, the latitude of the record (decimal degrees, epsg:4326)}
\item{lon_wgs84}{a number, the longitude of the record (decimal degrees, epsg:4326)}
\item{settore}{a character string, either "north" (if latitude of record > 43.35) or "south"}
\item{epoca}{a character string, either "pre" 1950 or "post"}
\item{p_status}{a one- or two-character string, the record qualificaton as per the Checklist: P = present, NC = unconfirmed, NP = wrong record, D = doubtful record, EX = extinct species}
\item{a_status}{a character string, the alien status as per the Checklist: A = alien; A INV = invasive alien; A NAT = naturalised alien; A CAS = casual alien; C = cryptogenic species}
\item{geometry}{geometry column}
}
}
\usage{
floratos_sf
}
\description{
A spatial dataframe containing the floristic records for Tuscany extracted
from Wikiplantbase #Toscana (bot.biologia.unipi.it/wpb/toscana), with scientific
names standardised against the Checklist of the Italian flora
(https://dryades.units.it/floritaly/). The presence status and alien status are
also included. If a non spatially-enabled version
is needed, use \code{floratos}. The CRS is WGS84 / UTM zone 32N (epsg code 32632).
}
\keyword{datasets}

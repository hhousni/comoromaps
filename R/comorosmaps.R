#' Comoro Islands Map
#'
#' Draw  maps of Comoros Islands.  by Country, by Island, by Prefecture and by Commune
#'
#'
#' `comorosmaps()`uses the sf package to plot by plotting the geometry rather than every column and leave the plot pref ready for overplotting with other data
#'
#' @param x     Name of the data set to use. The default is `comorosmpap()`, It draws Comoro Islands as one object without commune.
#' @param pref  TRUE or FALSE. For each x, choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @examples
#' comorosmap() Map Comoro Islands as one object without prefecture area
#' comorosmap(region=TRUE) Map Comoro Islands as one object with prefecture area
#' comorosmap("isaland",region=FALSE) Map Comoros Islands as 3 object (Grande Comore, Anjouan, Mohéli) without prefecture area.
#' comorosmap("isaland",region=TRUE) Map Comoros Islands as 3 object (Grande Comore, Anjouan, Mohéli) with prefecture area.
#' Comorosmap("anjouan",region=FALSE) Map Anjouan island without prefcture area
#' Comorosmap("anjouan",region=TRUE) Map Anjouan island with prefcture area
#' Comorosmap("mohéli",region=FALSE) Map Mohéli island without prefcture area
#' Comorosmap("mohéli",region=TRUE) Map Mohéli island with prefcture area
#' Comorosmap("grande comore",region=FALSE) Map Grande Comore island without prefcture area
#' Comorosmap("grande comore",region=TRUE) Map Grande Comore island with prefcture area
#'
#'
#' @return The data set used is in `sf` format
#' @export
#'
comorosmap <- function(x="country", pref=FALSE) {
  if (x=="country" & pref==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM","KM1","KM2","KM3","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25","KM26","KM27",
                          "KM12","KM13","KM33","KM28","KM14","KM15","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25"
                          ,"KM26","KM27","KM12","KM13","KM33","KM28","KM14","KM15"))

  } else if (x=="country" & pref==FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM"))
  } else if (x=="island" & pref==FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM1","KM2","KM3"))
  } else if (x=="grande comore" & pref ==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM21","KM22","KM23","KM24","KM25","KM26","KM27",
                          "KM28","KM29"))
  } else if (x=="grande comore" & pref ==FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM2"))
  } else if (x=="anjouan" & pref ==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM11","KM12","KM13","KM14","KM15"))
  } else if (x=="anjouan" & pref == FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM1"))
  } else if (x=="moheli" & pref ==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM31","KM32","KM33"))
  } else if (x=="moheli" & pref == FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM3"))
  } else

    state <- print("error")

  plot(sf::st_geometry(state))
}

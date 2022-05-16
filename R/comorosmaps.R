#' Comoro Islands Maps
#'
#' Draw a map of Comoros Islands: by Country, by Island, by Prefecture and by Commune
#'
#'
#' `comoromaps()`uses the sf package to plot by ploting the geometry rather than every column and leave the plot region ready for overplotting with other data
#'
#' @param x  name of the data set to use, the default is comorompaps(x = "country",region = False)
#' @param region binary variable: TRUE or FALSE. for each x, choose if region = TRUE or FALSE
#'
#' @return the data set used, in `sf` format
#' @export
#'
comorosmap <- function(x="country", region=FALSE) {
  if (x=="country" & region==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM","KM1","KM2","KM3","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25","KM26","KM27",
                          "KM12","KM13","KM33","KM28","KM14","KM15","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25"
                          ,"KM26","KM27","KM12","KM13","KM33","KM28","KM14","KM15"))

  } else if (x=="country" & region==FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM"))
  } else if (x=="island" & region==FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM1","KM2","KM3"))
  } else if (x=="grande comore" & region ==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM21","KM22","KM23","KM24","KM25","KM26","KM27",
                          "KM28","KM29"))
  } else if (x=="grande comore" & region ==FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM2"))
  } else if (x=="anjouan" & region ==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM11","KM12","KM13","KM14","KM15"))
  } else if (x=="anjouan" & region == FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM1"))
  } else if (x=="moheli" & region ==TRUE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM31","KM32","KM33"))
  } else if (x=="moheli" & region == FALSE) {
    state <- comoromaps_data %>%

      filter (amdinCode %in% c("KM3"))
  } else

    state <- print("error")

  plot(sf::st_geometry(state))
}

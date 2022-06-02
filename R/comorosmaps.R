#' Comoro Islands
#'
#' Draw  maps of Comoros Islands.
#'
#' `comoros()`uses the sf package to plot by plotting the geometry rather than every column and leave the plot pref ready for overplotting with other data
#'
#' @param x     Name of the data set to use. The default is `comoros()`, It draws Comoro Islands as one object without commune.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @return The data set used is in `sf` format
#' @export
#' @importFrom sf st_geometry
#' @importFrom graphics plot
#' @examples
#' ## Map Comoro Islands as one object without prefecture area
#' comoros()
#' ## Map Comoro Islands as one object with prefecture area
#' comoros(x="country",pref=TRUE)
#' ## Map Comoros Islands as 3 object (Grande Comore, Anjouan, Mohéli) without prefecture area.
#' comoros(x="island",pref=FALSE)
#' ## Map Comoros Islands as 3 object (Grande Comore, Anjouan, Mohéli) with prefecture area
#' comoros(x="island",pref=TRUE)
#'
comoros <- function(x="country", pref=FALSE) {
  if (x=="country" & pref==TRUE) {
     km <- comoromaps_data %>%
      filter (adminCode %in% c("KM11","KM12","KM13","KM14","KM15","KM21","KM22","KM23","KM24","KM25","KM26","KM27","KM28","KM29","KM31","KM32","KM33"))%>%
      select(name,geometry)
  } else if (x=="country" & pref==FALSE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM"))%>%
      select(name,geometry)
  } else if (x=="island" & pref==FALSE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM1","KM2","KM3"))%>%
      select(name,geometry)
  } else if (x=="island" & pref==TRUE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM11","KM12","KM13","KM14","KM15","KM21","KM22","KM23","KM24","KM25","KM26","KM27","KM28","KM29","KM31","KM32","KM33"))%>%
      select(name,geometry)
  }else
    km <- print("error")
  plot(sf::st_geometry(km))
  invisible(unique(km))
}
#' Grande Comore
#'
#' Draw a map for Grande Comore Island
#'
#'
#' @param x     Name of the data set to use. The default is `grandeComore()`, It draws Grande Comore Island as one object without prefecture.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#'
#' @return The data set used is in `sf` format
#' @export
#' @importFrom sf st_geometry
#' @importFrom graphics plot
#' @examples
#' ## Map Grande Comore Island
#' grandeComore ()
#' ## Map Grande Comore with prefecture area
#' grandeComore (pref = TRUE)
#'
grandeComore <- function(x="grande comore", pref=FALSE) {
  if (x=="grande comore" & pref ==TRUE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM21","KM22","KM23","KM24","KM25","KM26","KM27",
                               "KM28","KM29"))%>%
      select(name,geometry)
  } else if (x=="grande comore" & pref == FALSE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM2"))%>%
      select(name,geometry)
  } else
    km <- print("error")
  plot(sf::st_geometry(km))
  invisible(unique(km))
}
#' Moheli
#'
#' Draw a map for Moheli Islands
#'
#' @param x     Name of the data set to use. The default is `moheli()`, It draws Moheli Islands as one object without prefecture.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @return The data set used is in `sf` format
#' @export
#' @importFrom sf st_geometry
#' @importFrom graphics plot
#' @examples
#' ## Map Moheli Island
#' moheli ()
#' ## Map Moheli Island with prefecture area
#' moheli (pref = TRUE)
moheli <- function(x="moheli", pref=FALSE) {
  if (x=="moheli" & pref ==TRUE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM31","KM32","KM33"))%>%
      select(name,geometry)
  } else if (x=="moheli" & pref == FALSE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM3")) %>%
      select(name,geometry)
  } else
    km <- print("error")
  plot(sf::st_geometry(km))
  invisible(unique(km))
}
#'
#' Anjouan
#'
#' Draw a map for Anjouan Island
#'
#' @param x     Name of the data set to use. The default is `anjouan()`, It draws Anjouan Island as one object without prefecture.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @return The data set used is in `sf` format
#' @export
#' @importFrom sf st_geometry
#' @importFrom graphics plot
#' @examples
#' ## Map Anjouan Island.
#' anjouan ()
#' ## Map Anjouan Island with prefecture area.
#' anjouan (pref = TRUE)
#'
anjouan <- function(x="anjouan", pref=FALSE) {
  if (x=="anjouan" & pref ==TRUE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM11","KM12","KM13","KM14","KM15"))%>%
      select(name,geometry)
  } else if (x=="anjouan" & pref == FALSE) {
    km <- comoromaps_data %>%
      filter (adminCode %in% c("KM1"))%>%
      select(name,geometry)
  } else
    km <- print("error")
  plot(sf::st_geometry(km))
  invisible(unique(km))
}


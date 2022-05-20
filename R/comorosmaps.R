#' Comoro Islands Map
#'
#' Draw  maps of Comoros Islands.
#'
#'
#' `comorosmap()`uses the sf package to plot by plotting the geometry rather than every column and leave the plot pref ready for overplotting with other data
#'
#' @param x     Name of the data set to use. The default is `comorosmpap()`, It draws Comoro Islands as one object without commune.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @examples
#' comorosmap() ## Map Comoro Islands as one object without prefecture area
#' comorosmap("country",pref=TRUE) ## Map Comoro Islands as one object with prefecture area
#' comorosmap("island",pref=FALSE) ## Map Comoros Islands as 3 object (Grande Comore, Anjouan, Mohéli) without prefecture area.
#' comorosmap("island",pref=TRUE) ## Map Comoros Islands as 3 object (Grande Comore, Anjouan, Mohéli) with prefecture area.
#' comorosmap("anjouan",pref=FALSE) ## Map Anjouan island without prefcture area
#' comorosmap("anjouan",pref=TRUE) ## Map Anjouan island with prefcture area
#' comorosmap("moheli",pref=FALSE) ## Map Mohéli island without prefcture area
#' comorosmap("moheli",pref=TRUE) ## Map Mohéli island with prefcture area
#' comorosmap("grande comore",pref=FALSE) ## Map Grande Comore island without prefcture area
#' comorosmap("grande comore",pref=TRUE) ## Map Grande Comore island with prefcture area
#'
#'
#' @return The data set used is in `sf` format
#' @export
#'
comorosmap <- function(x="country", pref=FALSE) {
  if (x=="country" & pref==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM","KM1","KM2","KM3","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25","KM26","KM27",
                          "KM12","KM13","KM33","KM28","KM14","KM15","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25"
                          ,"KM26","KM27","KM12","KM13","KM33","KM28","KM14","KM15"))%>%
      select(name,geometry)
  } else if (x=="country" & pref==FALSE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM"))%>%
      select(name,geometry)
  } else if (x=="island" & pref==FALSE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM1","KM2","KM3"))%>%
      select(name,geometry)
  } else if (x=="island" & pref==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM","KM1","KM2","KM3","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25","KM26","KM27",
                               "KM12","KM13","KM33","KM28","KM14","KM15","KM31","KM11","KM32","KM21","KM22","KM23","KM29","KM24","KM25"
                               ,"KM26","KM27","KM12","KM13","KM33","KM28","KM14","KM15"))%>%
      select(name,geometry)
  } else if (x=="grande comore" & pref ==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM21","KM22","KM23","KM24","KM25","KM26","KM27",
                          "KM28","KM29"))%>%
      select(name,geometry)
  } else if (x=="grande comore" & pref ==FALSE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM2"))%>%
      select(name,geometry)
  } else if (x=="anjouan" & pref ==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM11","KM12","KM13","KM14","KM15"))%>%
      select(name,geometry)
  } else if (x=="anjouan" & pref == FALSE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM1"))%>%
      select(name,geometry)
  } else if (x=="moheli" & pref ==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM31","KM32","KM33"))%>%
      select(name,geometry)
  } else if (x=="moheli" & pref == FALSE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM3"))%>%
      select(name,geometry)
  } else
    x <- print("error")
  plot(sf::st_geometry(x))
  invisible(x)
}
#'
#' Draw a map for Grande Comore Island
#'
#'
#' @param x     Name of the data set to use. The default is `grandeComore()`, It draws Grande Comore Island as one object without prefecture.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#'
#'
#' @return The data set used is in `sf` format
#' @export
#' @examples
#' grandeComore ()
#' grandeComore (pref = TRUE)
#'
grandeComore <- function(x="grande comore", pref=FALSE) {
  if (x=="grande comore" & pref ==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM21","KM22","KM23","KM24","KM25","KM26","KM27",
                               "KM28","KM29"))%>%
      select(name,geometry)
  } else if (x=="grande comore" & pref == FALSE) {
    x <- x <- comoromaps_data %>%
      filter (adminCode %in% c("KM2"))%>%
      select(name,geometry)
  } else
    x <- print("error")
  plot(sf::st_geometry(x))
  invisible(x)
}
#'
#' Draw a map for Anjouan Island
#'
#' @param x     Name of the data set to use. The default is `anjouan()`, It draws Anjouan Island as one object without prefecture.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @examples
#' anjouan ()
#' anjouan (pref = TRUE)
#'
#'
#' @return The data set used is in `sf` format
#' @export
#'
anjouan <- function(x="anjouan", pref=FALSE) {
  if (x=="anjouan" & pref ==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM11","KM12","KM13","KM14","KM15"))%>%
      select(name,geometry)
  } else if (x=="anjouan" & pref == FALSE) {
    x <- x <- comoromaps_data %>%
      filter (adminCode %in% c("KM1"))%>%
      select(name,geometry)
  } else
    x <- print("error")
  plot(sf::st_geometry(x))
  invisible(x)
}
#'
#' Draw a map for Moheli Islands
#'
#' @param x     Name of the data set to use. The default is `moheli()`, It draws Moheli Islands as one object without prefecture.
#' @param pref  Choose to map with prefecture area ("pref" = TRUE) or without prefecture area ("pref" = FALSE)
#' @examples
#' moheli ()
#' moheli (pref = TRUE)
#'
#' @return The data set used is in `sf` format
#' @export
#'
moheli <- function(x="moheli", pref=FALSE) {
  if (x=="moheli" & pref ==TRUE) {
    x <- comoromaps_data %>%
      filter (adminCode %in% c("KM31","KM32","KM33"))%>%
      select(name,geometry)
  } else if (x=="moheli" & pref == FALSE) {
    x <- x <- comoromaps_data %>%
      filter (adminCode %in% c("KM3")) %>%
      select(name,geometry)
  } else
    x <- print("error")
  plot(sf::st_geometry(x))
  invisible(x)
}

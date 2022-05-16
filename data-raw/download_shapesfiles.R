## code to prepare `DATASET` dataset goes here

# Comoro Islands shapefile come from the humanitarian data exchange webiste:
# https://data.humdata.org/dataset/cod-ab-com

if (!require("pacman")) install.packages("pacman")
p_load(sf,rgdal, dplyr) # Necessary package to load shp files

# Load the data
admin0 <- st_read("data-raw/shp_files/com_admbnda_adm0_cosep_ocha_20191205.shp")
admin1 <- st_read("data-raw/shp_files/com_admbnda_adm1_cosep_ocha_20191205.shp")
admin2 <- st_read("data-raw/shp_files/com_admbnda_adm2_cosep_ocha_20191205.shp")
admin3 <- st_read("data-raw/shp_files/com_admbnda_adm3_cosep_ocha_20191205.shp")

# Remove unnecessary col

country <- admin0 %>%
  select ("country"=ADM0_EN,"amdinCode"=ADM0_PCODE,geometry)

island <- admin1 %>%
  select ("country"=ADM1_EN,"amdinCode"=ADM1_PCODE,geometry)

prefecture <- admin2 %>%
  select ("country"=ADM2_EN,"amdinCode"=ADM2_PCODE,geometry)

commune <- admin2 %>%
  select ("country"=ADM2_EN,"amdinCode"=ADM2_PCODE,geometry)

comoromaps_data <- rbind(country,island, prefecture,commune)

rm(admin0, admin1, admin2, admin3)
# Save the files

comoromaps_data <- sf::st_as_sf(tibble::as_tibble(comoromaps_data))


usethis::use_data(comoromaps_data, internal = TRUE, overwrite = TRUE)



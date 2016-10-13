library(dplyr)

lookup <- wbstats::wb_cachelist
lookup <- lookup$countries

aggregates <- lookup %>%
  filter(is.na(regionID))

countries <- lookup %>%
  filter(!is.na(regionID))

devtools::use_data(aggregates, countries, overwrite = TRUE)

install.packages("crul")
install.packages("magrittr")
library(magrittr)
remotes::install_github(repo = "git@github.com:GuilhermeFCO/covidBR.git")
covidBR::downloadCovidBR()
covidBR::createMaps(withCorr = TRUE)

if (!dir.exists("./graphs"))
  dir.create("./graphs")

cities <- readRDS("./rds/cities.rds")
cities <- cities %>% dplyr::select(date, code, accumCases, accumDeaths, newCases, newDeaths)
saveRDS(cities, "./graphs/cities.rds")
rm(cities)

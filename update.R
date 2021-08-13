install.packages("crul")
library("dplyr")
remotes::install_github(repo = "git@github.com:GuilhermeFCO/covidBR.git")
covidBR::downloadCovidBR()
covidBR::createMaps(withCorr = TRUE)

if (!dir.exists("./graphs"))
  dir.create("./graphs")

cities <- readRDS("./rds/cities.rds")
cities <- cities %>% dplyr::filter(date >= (min(cities$date) + 120))
saveRDS(cities, "./graphs/cities.rds")
rm(cities)

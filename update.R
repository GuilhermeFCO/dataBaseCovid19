install.packages("geobr")
install.packages("curl")
remotes::install_github(repo = "git@github.com:GuilhermeFCO/covidBR.git")
covidBR::downloadCovidBR()

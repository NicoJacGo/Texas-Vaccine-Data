devtools::install_github("dkahle/ggmap") # for the register_google function
devtools::install_github("rodazuero/gmapsdistance")
install.load::install_load('gmapsdistance', 'googlesheets', 'dplyr', 'leaflet', 'magrittr', 'ggmap', 'cluster', 'factoextra')
library(ggmap)
library(gmapsdistance)
library(dplyr)
library(leaflet)
library(magrittr)
library(cluster)
library(factoextra)
library(tidyverse)

register_google(key="AIzaSyAeE5cLUMqx6kQgHdNrC8QM85RjLhBTi-k")



df <- read_csv("data/aggregate.csv")

df$lon <- 0
df$lat <- 0
df$geoAddress <- ""
for(i in 1:nrow(df))
{
  # Print("Working...")
  if (is.na(df$Address[i])) {
    result <- geocode(paste(df$Provider_Name[i], df$City[i], sep = " "), output = "latlona", source = "google")
    df$lon[i] <- as.numeric(result[1])
    df$lat[i] <- as.numeric(result[2])
    #df$geoAddress[i] <- as.character(result[3])
  } else{
    result <- geocode(df$Address[i], output = "latlona", source = "google")
    df$lon[i] <- as.numeric(result[1])
    df$lat[i] <- as.numeric(result[2])
    #df$geoAddress[i] <- as.character(result[3])
  }
}


write.csv(df,"new_aggregate.csv", row.names = FALSE)


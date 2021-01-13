library(dplyr)
library(readr)

d1 <- readr::read_csv(file = "week1.csv",
                        col_names = TRUE)

d1 <- read.csv("week1.csv")
d2 <- read.csv("week2.csv")

df <- merge(d1,d2)

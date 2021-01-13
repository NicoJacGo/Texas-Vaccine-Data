library(dplyr)
library(readr)

d1 <- read.csv("week1.csv")
d2 <- read.csv("week2.csv")
d3 <- read.csv("week3.csv")
d4 <- read.csv("week4.csv")
d5 <- read.csv("week5.csv")
da <- read.csv("aggregate.csv")

edf <- merge(d1,d2, by=intersect(names(d1), names(d2)), all = TRUE, all.d1= all, all.d2 = all)

edf <- merge(da,d5, by=intersect(names(da), names(d5)), all = TRUE, all.da= all, all.d5 = all)

edf <- edf[ , -which(names(edf) %in% c("Pfizer.Doses", "Moderna.Doses"))]

write.csv(edf, file="aggregate.csv")


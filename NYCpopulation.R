#installed.packages("lubridate")
#installed.packages("dplyr")

library(lubridate)
library(dplyr)
library(tidyverse)

population <- read.csv("Desktop/cleannyc.csv", header = TRUE)

class(population)
dim(population)
names(population)
str(population)
glimpse(population)
summary(population)

head(population)
tail(population)

populationnyc <- gather(population, years, value, -Borough)
head(populationnyc)
tail(populationnyc)
glimpse(populationnyc)

populationnyc$years <- gsub("\\X","", populationnyc$years)
head(populationnyc)

glimpse(populationnyc)
summary(populationnyc)
str(populationnyc)

populationnyc$value <- gsub("\\,","", populationnyc$value)
glimpse(populationnyc)

hist(populationnyc$value)


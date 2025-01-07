library(tidyverse)
view(chicago_air_pollution)
summary(chicago_air_pollution)
chicago_air_pollution <- read.csv("chicago_air_pollution.csv")
cor.test(chicago_air_pollution$tmpd,
         chicago_air_pollution$o3tmean2,
         method = "pearson")
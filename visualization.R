library(tidyverse)
library(ggplot2)
library(readr)
library(rcompanion)
pdf("visualization.pdf")
xyz <- read.csv("chicago_air_pollution.csv")

y <- xyz$tmpd
x <- xyz$o3tmean2
plot(x,y , main = "Correlation of  Ozone Readings and Temprature (°F) in Chicago",
     xlab = "Ozone Readings",
     ylab =  "Temprature (°F) ",
     col = "grey",
     ylim = c(0,100))
abline(lm( y ~ x, data = xyz), col = "blue")
data = xyz
model = lm(y ~ x,data = xyz)
plotNormalHistogram(residuals(model),
                    col = "pink",main = "Histogram of Ozone levels",
                    xlab = "Ozone levels")
dev.off()
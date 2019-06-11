getwd()
setwd("../../git/sandbox/map/")
rm(list=ls())
getwd()

####install packages####
install.packages("maps")
install.packages("mapdata")
install.packages("ggplot2")
install.packages("ggmap")

####load packages####
library(maps)
library(mapdata)
library(ggplot2)
library(ggmap)

m<-map("worldHires", xlim=c(116,127), ylim=c(4,21),
       col="turquoise", fill=TRUE, lwd=0.5)
map.scale(122,5, relwidth=0.30, metric=TRUE, ratio=FALSE, cex=0.6)
map.axes()

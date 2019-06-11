rm(list=ls())

getwd
getwd()
setwd("../../../../../Desktop/Philippines/")
getwd()
Micah_Data_Sfuscescens <- read_csv("Micah_Data _Sfuscescens.csv")

###START ANALYSIS###

pl_NumFishersvSLength <- ggplot(data = Micah_Data_Sfuscescens) +
  aes(x = as.factor(NumFishersTargetingSiganids_Abner), y = Standard_Length)
pl_NumFishersvSLength + geom_boxplot() + xlab("Number of Fishers Targeting Siganids") +
  ylab("Standard Length (cm)")

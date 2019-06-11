rm(list=ls())

getwd
getwd()
setwd("../../../../../Desktop/Philippines/")
getwd()
Micah_Data_Sfuscescens <- read_csv("Micah_Data _Sfuscescens.csv")

###START ANALYSIS###

pl_NumFishersvSLength <- ggplot(data = Micah_Data_Sfuscescens) +
  aes(x = as.factor(NumFishersTargetingSiganids_Abner), y = Standard_Length) +
  ggtitle("Variation in Standard Length in Relation to Siganid Fishers")
pl_NumFishersvSLength + geom_boxplot() + xlab("Number of Fishers Targeting Siganids") +
  ylab("Standard Length (cm)")
theme_classic()
geom_point(color = "blue")
pl_NumFishersvSLength + ggtitle("Variation in Standard Length in Relation to Siganid Fishers")

####STATISTICS ON FIRST PLOT####
t.test(Micah_Data_Sfuscescens$NumFishersTargetingSiganids_Abner,
       Micah_Data_Sfuscescens$Standard_Length, data = Micah_Data_Sfuscescens)

####STANDARD LENGTH MANUAL V STANDARD LENGTH COMPUTATIONAL####
pl_SLPvSLC <- ggplot(data = Micah_Data_Sfuscescens) +
  aes(x = (Standard_Length_Abner), y = (Standard_Length)) + 
  geom_point()
show(pl_SLPvSLC)
pl_SLPvSLC + geom_smooth(method = "lm") + geom_abline(intercept = 0, slope = 1) +
  xlab("Manual Standard Length (cm)") +
  ylab("Digital Standard Length (cm)") +
  ggtitle("Linear Regression of Standard Length Measured Manually and Digitally")
linear_model <- lm(Standard_Length_Abner ~ Standard_Length,
                   data=Micah_Data_Sfuscescens)
show(linear_model)
summary(linear_model)

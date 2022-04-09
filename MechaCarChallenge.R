#Dependable
library(dplyr)

#Import and read the file as a dataframe
cardata <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= cardata)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= cardata)) 




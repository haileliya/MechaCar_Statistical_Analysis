#Dependable
library(dplyr)

##Deliverable 1##

#Import and read the file as a dataframe
cardata <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= cardata)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= cardata)) 


##DELIVERABLE 2##

#Import and read the file as a dataframe
mecha_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

#Create Total Summary Dataframe
total_summary <- mecha_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), Std_Deviation=sd(PSI), Num_Coil=n(), .groups = 'keep')

#Create Lot Summary dataframe
lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), Std_Deviation=sd(PSI), Num_Coil=n(), .groups = 'keep')                                      


##Deliverable 3##

#T-test 

#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(mecha_coil$PSI,mu=1500)

#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

  
1
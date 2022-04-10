# MechaCar_Statistical_Analysis
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.


## Linear Regression to Predict MPG
1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle_length and ground_clearance are the two variable that would provide a non-random amount of variance to the mpg values. We can conclude this because the p-value (2.60e-12 and 5.21e-08, respectively) of these coefficients are very small, indicating that they are an significant addition to the model.

2) Is the slope of the linear model considered to be zero? Why or why not?

The slope is not considered to be zero because the p-value is 5.35e-11, which is much smaller than 0.05, therefore the null hypothesis is rejected.

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model tested the quality of the fit of the model and found that the R-squared value was 0.7149, which is not as tight, however is able to produce predictions with some effectiveness. 

![image](https://user-images.githubusercontent.com/96396696/162599142-200dd4ad-192a-4192-87f6-99a894e4447c.png)

## Summary Statistics on Suspension Coils
The purpose of running these t-tests was to determine if the manufacturing lots are statistically different from the mean population. As you can see from the screenshots below, Lot 1 and 2 are not statistically signifcant since the calculated p-values are not smaller than 0.05. Therefore, for these two lots, we cannot reject the null hypothesis. However, for Lot3, the p-value is 0.04168, therefore statistically signifcant from the mean population, allowing us to reject the null hypothesis. We know that this lot is sigificant to the model we are trying to understand. 

![image](https://user-images.githubusercontent.com/96396696/162599335-05601357-e6da-404c-89f8-115230280ded.png)

![image](https://user-images.githubusercontent.com/96396696/162599354-373b66d6-0e45-4e03-8ef6-205368a4d5d9.png)


## Study Design: MechaCar vs Competition
Consumers looking to purchase a car are interested in more than just looks, mileage, and efficcency. Many customers are thinking about the impact their vehicle will have on the environement. Over the last decade, there has been an increase interest and competition in cars that have a smaller carbon footprint. Therefore, it is in MechaCar's best interest to invesitage how their cars compare to their competitors when it comes to environmental impact. 

*What metric or metrics are you going to test?

In order to measure MechaCar's carbon footprint, we will need to calculate and compare the tailpipe emission of CO2 by measuring fuel consumption to it's competitors. Furthermore, a car's carbon footprint is influenced by more than just fuel consumption but also how often it is serviced. Changing a car's spark plugs and oil often, reduces a vehicle's CO2 emission.
 
 *What is the null hypothesis or alternative hypothesis?
 
 Null: The CO2 emission for the MechaCar prototype is similar to competitors vehicles if the car is serviced every 3 months.
 Alternative:The CO2 emission for the MechaCar prototype is statistically below that of their competitors vehicles if serviced every 3 months.

*What statistical test would you use to test the hypothesis? And why?

I would use a paired t-test for this analysis because I am comparing two different groups but matching the vehicle types. The subjects will be observed twice. The carbon emission for both groups will be measured and analyzed after three months without being serviced and then they will be serviced and the CO2 emissions will then be measured again at month 6. The mean difference between the two observations will be observed and compared. If there is a difference between the two repated observations then there maybe evidence that getting MechaCar serviced every 3 months reduces it's carbon emission compared to its competitors. 

*What data is needed to run the statistical test?

We will need the fuel consumption for each vehicle and then calcular the CO2 emission from there. We will also need the date and type of servicing done to the vehicle at the 3 month mark. 

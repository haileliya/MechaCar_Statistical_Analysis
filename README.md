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

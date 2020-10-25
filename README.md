# MechaCar_Analysis

## Linear Regression to Predict MPG

Below is the regression calculations for predicting variance to MPG: 

![](https://github.com/Stewartsl17/MechaCar_Statistical_Analysis/blob/main/Images/Linear_Reg%20-%20C1.png)

Based on this, we can see that vehicle_weight, spoiler_angle, and AWD have no impact on the mpg of the vehicle. Conversely, there is an impact on the mpg of a vehicle from the vehicle_length and ground_clearance. Moreover, the p-value of this regression is 5.35e-11, which is smaller than the assumed significance level that we're using. This means that we can reject the null hypothesis and we that the data is statistically significant. Because of the proximity to 1 of the multiple R-squared (.71) and adjusted R-squared (.68), we can say that this linear model predicts mpg of MechaCar prototypes effectively. 

## Summary Statistics on Suspension Coils

![](https://github.com/Stewartsl17/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary%20-%20C2.png) <br>
![](https://github.com/Stewartsl17/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary%20-%20C2.png) <br> 

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

![](https://github.com/Stewartsl17/MechaCar_Statistical_Analysis/blob/main/Images/T-Test_Suspension%20-%20C3.png)

Within this part of the analysis, we were to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Our null hypothesis was that there is no statistical difference between all manufacturing lots and each lot individually. Based on the p-value, we can't conclude that a significant difference exists. 

## Study Design: MechaCar vs Competition

In order to create comparison analysis between the MechaCar and other competition, we would need to compare a variety of factors between MechaCar and others. The most interesting metrics for our design should be vehicle dimensions, cost, maintenance cost, and safety rating. The null hypothesis is that there is statistical difference between the different variables and the impact on popularity. In order to check this, I would perform a new multiple linear regression analysis between these variables among MechaCar and versus other car companies.  

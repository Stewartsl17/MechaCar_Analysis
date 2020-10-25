# Challenge 1: Linear Regression to Predict MPG

# use library function to load dplyr package 
library(dplyr)

# import and read the MechaCar_mpg.csv file 
MechaCar_mpg <- read_csv("~/Desktop/GW Boot Camp/Module 15 - R/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# perform linear regression using lm function with all six variables 
lm(formula = vehicle_length ~ mpg + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg)

# use the summary function to determine the p-value and the r-squared value for the linear regression
summary(lm(vehicle_length ~ mpg + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg))

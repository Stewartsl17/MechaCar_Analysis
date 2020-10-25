# Challenge 1: Linear Regression to Predict MPG

# use library function to load dplyr package 
library(dplyr)

# import and read the MechaCar_mpg.csv file 
MechaCar_mpg <- read_csv("~/Desktop/GW Boot Camp/Module 15 - R/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# perform linear regression using lm function with all six variables 
lm(formula = vehicle_length ~ mpg + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg)

# use the summary function to determine the p-value and the r-squared value for the linear regression
summary(lm(vehicle_length ~ mpg + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg))

# Challenge 2: Create Visualizations for the Trip Analysis 

# import and read the Suspension_Coil.csv file 
Suspension_Coil <- read_csv("~/Desktop/GW Boot Camp/Module 15 - R/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# write an RScript that creates a total_summary dataframe using the summarize function to get the mean, median, variance, and st. dev of the PSI column.
total_summary <- summarize(.data=MechaCar_mpg ,Mean=mean(Suspension_Coil$PSI), Median=median(Suspension_Coil$PSI), Variance=var(Suspension_Coil$PSI),SD=sd(Suspension_Coil$PSI), .groups='keep')

# write an RScript that creates a lot_summary dataframe using the group_by and summarize functions to get the mean, median, variance, and st. dev of the PSI column.
lot_summary = Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


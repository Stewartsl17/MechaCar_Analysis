# Challenge 1: Linear Regression to Predict MPG

# use library function to load dplyr package 
library(dplyr)

# import and read the MechaCar_mpg.csv file 
MechaCar_mpg <- read_csv("~/Desktop/GW Boot Camp/Module 15 - R/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# perform linear regression using lm function with all six variables 
lm(formula = mpg ~ vehicle_length + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg)

# use the summary function to determine the p-value and the r-squared value for the linear regression
summary(lm(mpg ~ vehicle_length + ground_clearance + spoiler_angle + AWD + vehicle_weight, data = MechaCar_mpg))

# Challenge 2: Create Visualizations for the Trip Analysis 

# import and read the Suspension_Coil.csv file 
Suspension_Coil <- read_csv("~/Desktop/GW Boot Camp/Module 15 - R/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# write an RScript that creates a total_summary dataframe using the summarize function to get the mean, median, variance, and st. dev of the PSI column.
total_summary <- summarize(.data=MechaCar_mpg ,Mean=mean(Suspension_Coil$PSI), Median=median(Suspension_Coil$PSI), Variance=var(Suspension_Coil$PSI),SD=sd(Suspension_Coil$PSI), .groups='keep')

# write an RScript that creates a lot_summary dataframe using the group_by and summarize functions to get the mean, median, variance, and st. dev of the PSI column.
lot_summary = Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#  Challenge 3: T-Tests on Suspension Coils

# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI,mu=1500)

# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot1")
t.test(log10(Lot1$PSI),mu=mean(log10(Suspension_Coil$PSI)))

Lot2 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot2")
t.test(log10(Lot2$PSI),mu=mean(log10(Suspension_Coil$PSI)))

Lot3 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot3")
t.test(log10(Lot3$PSI),mu=mean(log10(Suspension_Coil$PSI)))


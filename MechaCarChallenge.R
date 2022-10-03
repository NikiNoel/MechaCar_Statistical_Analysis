library(dplyr)

###### Deliverable 1 ##################

# import csv file 
# example code form 15.2.3
# demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
MechaCar_mpg <- read.csv(file='./Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. 
# example code from module 15.7.3 
# lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCar_mpg)
Mecha_lm

# view using summary
summary(Mecha_lm)

# view R-squared
summary(Mecha_lm)$r.squared

###### Deliverable 2 ##################
# import csv file
Suspension_Coil <- read.csv(file='./Data/Suspension_coil.csv',check.names=F,stringsAsFactors = F)

# create a summary table for suspension coils
total_summary <- Suspension_Coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
total_summary

# view by lots using group_by
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
lot_summary

####### Deliverable 3 ################ 





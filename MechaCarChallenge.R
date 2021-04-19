## Deliverable 1: Linear Regression to Predict MPG 

library(dplyr)
mechacar_ds <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_ds)
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_ds))
 

## Deliverable 2: reate Visualizations for the Trip Analysis
suspension_ds <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- suspension_ds %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- suspension_ds %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


## Deliverable 3: T-Tests on Suspension Coils
t.test(suspension_ds$PSI, mu=1500)
t.test(subset(suspension_ds, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
t.test(subset(suspension_ds, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
t.test(subset(suspension_ds, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)

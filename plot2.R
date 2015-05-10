## R Programming assignment Exploratory Data Anasus Course Project # 1
## Author: M. Chitnis
## Date: May 9, 2015
## Filename: plot2.R
## Purpose: Plot the chart

## Read the data
source("readplotdata.R")

# Open png device with width=480, height=480
png(filename="plot2.png", width = 480, height = 480, units = "px", bg="white")

# Make plot
plot(workDF$Time, workDF$Global_active_power, xlab="" , 
     ylab="Global Active Power(kilowatts)", type = "l")     

## Turn Off device
dev.off()
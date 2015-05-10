## R Programming assignment Exploratory Data Analysus Course Project # 1
## Author: M. Chitnis
## Date: May 9, 2015
## Filename: plot1.R
## Purpose: Plot the histogram

## Read the data
source("readplotdata.R")
                   
# Open png device with width=480, height=480
png(filename="plot1.png", width = 480, height = 480, units = "px", bg="white")
            
# Make plot
hist(workDF$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')           

## Turn Off device
dev.off()
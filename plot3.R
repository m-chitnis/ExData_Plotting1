## R Programming assignment Exploratory Data Analysus Course Project # 1
## Author: M. Chitnis
## Date: May 9, 2015
## Filename: plot3.R
## Purpose: Plot the sub metering chart

## Read the data
source("readplotdata.R")

# Open png device with width=480, height=480
png(filename="plot3.png", width = 480, height = 480, units = "px", bg="white")

## Make plot with sub_metering_1
plot(workDF$Time, workDF$Sub_metering_1, xlab="" , 
     ylab="Energy Sub Metering", type = "l")
## Add sub_metering_2, red in color
lines(workDF$Time, workDF$Sub_metering_2, type = "l", col="red")
## Add sub_metering_3, blue in color
lines(workDF$Time, workDF$Sub_metering_3, type = "l", col="blue")
## Add legend
legend("topright", 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

## Turn Off device
dev.off()
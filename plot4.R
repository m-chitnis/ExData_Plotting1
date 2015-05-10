## R Programming assignment Exploratory Data Analysus Course Project # 1
## Author: M. Chitnis
## Date: May 9, 2015
## Filename: plot4.R
## Purpose: Plot the 4 graphs

## Read the data
source("readplotdata.R")

# Open png device with width=480, height=480
png(filename="plot4.png", width = 480, height = 480, units = "px", bg="white")

## set the option to draw 2x2 graphs in output
par(mfrow=c(2,2))

## Make plot for Global Active Power
plot(workDF$Time, workDF$Global_active_power, xlab="" , 
     ylab="Global Active Power", type = "l")

## Make plot for Voltage
plot(workDF$Time, workDF$Voltage, xlab="datetime" , 
     ylab="Voltage", type = "l")

## Make plot with sub_metering
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

## Make plot for Global Reacive Power
plot(workDF$Time, workDF$Global_reactive_power, xlab="datetime" , 
     ylab="Global_reactive_power", type = "l")
## Turn Off device
dev.off()
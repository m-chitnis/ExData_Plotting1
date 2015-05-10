## R Programming assignment Exploratory Data Analysus Course Project # 1
## Author M. Chitnis
## Date: May 9, 2015
## FileName: readplotdata.R
## Purpose: Read the required data into a dataframe

## Set current dir as working dir
workDir <- "."
remoteFile <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
workFile <- "household_power_consumption.txt"

setwd(workDir)
if (!file.exists(workFile)) {
  download.file(remoteFile,
                method="curl",
                destfile="household_power_consumption.zip")  

  unzip("household_power_consumption.zip")  
}

workDF <- read.csv(workFile, 
                   header = TRUE,
                   sep=";",
                   na.strings = "?",
                   colClasses = c(rep("character", 2),
                                  rep("numeric",7)))

# convert date and time variables to Date/Time class
workDF$Time <- strptime(paste(workDF$Date, workDF$Time), "%d/%m/%Y %H:%M:%S")
workDF$Date <- as.Date(workDF$Date, "%d/%m/%Y")

# only use data from the dates 2007-02-01 and 2007-02-02
dateRange <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
workDF <- subset(workDF, Date %in% dateRange)

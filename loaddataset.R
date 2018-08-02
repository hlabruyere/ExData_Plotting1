# download dataset if required
if (!file.exists("household_power_consumption.txt")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "power.zip")
  unzip("power.zip") 
}

# load the filtered dataset based on date
library(sqldf)
df <- read.csv.sql("household_power_consumption.txt","select * from file where Date = '1/2/2007' or Date = '2/2/2007' ",sep=";")
df$datetime <- as.Date(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")



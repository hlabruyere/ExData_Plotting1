#load the data
source("loaddataset.R")

par(mfrow = c(2,2))

plot(df$datetime, 
     df$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

plot(df$datetime, 
     df$Voltage, 
     type = "l",
     ylab = "Voltage",
     xlab = "datetime")

plot(df$datetime, 
     df$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
points(df$datetime, 
       df$Sub_metering_2, 
       type = "l",
       col = "red")
points(df$datetime, 
       df$Sub_metering_3, 
       type = "l",
       col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty=1, cex=0.7, box.lty=0, inset = 0.02)

plot(df$datetime, 
     df$Global_reactive_power, 
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime")

dev.copy(png, file = "plot4.png")
dev.off()
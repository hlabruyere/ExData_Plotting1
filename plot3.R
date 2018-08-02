#load the data
source("loaddataset.R")

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
       lty=1, cex=0.9)
dev.copy(png, "plot3.png")
dev.off()
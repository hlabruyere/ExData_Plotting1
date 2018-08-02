#load the data
source("loaddataset.R")

plot(df$datetime, 
     df$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
dev.copy(png, "plot2.png")
dev.off()
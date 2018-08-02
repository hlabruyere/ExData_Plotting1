#load the data
source("loaddataset.R")

# plot 1 in reg setting Y label and main title
hist(df$Global_active_power, 
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()

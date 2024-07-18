
#PLOT 4
unzip("/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1/exdata_data_household_power_consumption.zip")

#reading the file
file_name <- "household_power_consumption.txt"

hpc <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")

hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis_1/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")


#subsetting data from dates
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]

par(mfrow = c(2,2))

plot(time_axis, hpc[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

plot(time_axis, hpc[, 5], xlab = "datetime", ylab = "Voltage", type = "l")

plot(time_axis, hpc[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_axis, hpc[, 8], col = "red")
lines(time_axis, hpc[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), cex = 0.8, lty = 1 , bty = "n")

plot(time_axis, hpc[, 4], xlab = "datetime", ylab = "Global_reactive_power", type = "l")

#saving plot 4
png(file = "/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1/plot4.png", width = 480, height = 480)
dev.off()


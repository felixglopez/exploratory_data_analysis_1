unzip("/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1/exdata_data_household_power_consumption.zip")

#reading the file
file_name <- "household_power_consumption.txt"

hpc <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")

hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")


#subsetting data from dates
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]

plot(time_axis, hpc[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_axis, hpc[, 8], col = "red")
lines(time_axis, hpc[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)

#saving plot 3
png(file = "plot3.png", width = 480, height = 480)
dev.off()

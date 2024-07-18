#creating plot 2
library(utils)
unzip("/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1/exdata_data_household_power_consumption.zip")

#reading the file
file_name <- "household_power_consumption.txt"

hpc <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")

hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")

str(hpc)

#subsetting data from dates
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]

#set language to English
Sys.setlocale("LC_TIME", "English")

#now the fucking difficult task of converting the format of the time vector
date_converted <- as.Date(hpc[, 1], format = "%d/%m/%Y")
time_converted <- strptime(hpc[, 2], format = "%H:%M:%S")
time_axis <- as.POSIXct(paste(date_converted, hpc[, 2]))

#PLOT 2
plot(time_axis, hpc[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

#saving plot
png(file = "plot2.png", width = 480, height = 480)
dev.off()

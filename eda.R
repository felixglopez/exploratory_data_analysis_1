#Exploratory data analisys - Week 1 assignment
#setting my working directory
setwd("/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1")

#unizipping my file and loading
library(utils)

unzip("/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1/exdata_data_household_power_consumption.zip")

#reading the file
file_name <- "household_power_consumption.txt"
hpc <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")

#analysing the file
head(hpc)
str(hpc)
dim(hpc)

#subsetting data from dates
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]


#PLOT 1
par(mfrow = c(1,1))
hist(hpc[, 3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
png(file = "plot1.png", width = 480, height = 480)
dev.off()


#creating plot 2
hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")

#analysing the file
head(hpc)
names(hpc)
str(hpc)
dim(hpc)

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

#Creating Plot 3
hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")

#analysing the file
head(hpc)
names(hpc)
str(hpc)
dim(hpc)

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



#PLOT 4
hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")

#analysing the file
head(hpc)
names(hpc)
str(hpc)
dim(hpc)

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
png(file = "/Users/fglopez/Documents/GitHub/exploratory_data_analysis/plot4.png", width = 480, height = 480)
dev.off()


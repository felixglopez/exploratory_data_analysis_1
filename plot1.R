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

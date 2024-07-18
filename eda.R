#Exploratory data analisys - Week 1 assignment
#setting my working directory
setwd("/Users/fglopez/Documents/GitHub/exploratory_data_analysis_1")

#unizipping my file and loading
hpc <- read.table("~/Documents/GitHub/exploratory_data_analysis/household_power_consumption.txt", 
                  header = TRUE, sep = ";", na.strings = "?")

#analysing the file
head(hpc)
names(hpc)
str(hpc)
dim(hpc)

#subsetting data from dates
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]

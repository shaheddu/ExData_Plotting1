hpc <- read.csv("D:/OneDrive/Online courses/Data science coursera/exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
View(data)

gap<-c(data$Global_active_power)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (Kilowatts)")

##plot is exported using the "Export" menu just right to the "Zoom" menu


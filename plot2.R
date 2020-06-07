SetTime <-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
head(SetTime)
data <- cbind(SetTime, data)

plot( SetTime, gap, type="l", col="black", xlab=" ", ylab="Global Active Power (kilowatts)")

##plot saved using Export menu
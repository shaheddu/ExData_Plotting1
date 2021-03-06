SetTime <-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(SetTime, data)
gap<-c(data$Global_active_power)

labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
colorv <- c("black", "red", "blue")
par(mfcol=c(2,2))
par(mar=c(1,1,1,1))
plot( SetTime, gap, type="l", col="black", xlab=" ", ylab="Global Active Power (kilowatts)")
plot(SetTime, data$Sub_metering_1, type="l", col=colorv[1], xlab="", ylab="Energy sub metering")
lines(SetTime, data$Sub_metering_2, col=colorv[2])
lines(SetTime, data$Sub_metering_3, col=colorv[3])
legend("topright", bty="n", legend=labels, col=colorv, lty=1)
plot( SetTime, data$Voltage, type="l", col="black", xlab=" datetime", ylab="Voltage")
plot( SetTime, data$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")

##saved manually from the Export menu top of of plot, and file type png is selected with 400*400 

labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
colorv <- c("black", "red", "blue")
plot(SetTime, data$Sub_metering_1, type="l", col=colorv[1], xlab="", ylab="Energy sub metering")
lines(SetTime, data$Sub_metering_2, col=colorv[2])
lines(SetTime, data$Sub_metering_3, col=colorv[3])
legend("topright", legend=labels, col=colorv, lty=1, cex=0.5)

##saved manually from the Export menu top of of plot, and file type png is selected with 400*400 

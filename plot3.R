dat <- read.table("household_power_consumption.txt", header=T, stringsAsFactors=F, sep=";")
sub <- dat[dat$Date %in% c('1/2/2007','2/2/2007'),]
day <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#global_active_power <- as.numeric(sub$Global_active_power)
Sub_metering_1 <- as.numeric(sub$Sub_metering_1)
Sub_metering_2 <- as.numeric(sub$Sub_metering_2)
Sub_metering_3 <- as.numeric(sub$Sub_metering_3)
png("plot2.png", width=480, height=480)
plot(day, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(day, Sub_metering_2, col="red")
lines(day, Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()




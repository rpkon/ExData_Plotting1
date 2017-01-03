dat <- read.table("household_power_consumption.txt", header=T, stringsAsFactors=F, sep=";")
sub <- dat[dat$Date %in% c('1/2/2007','2/2/2007'),]
day <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
global_active_power <- as.numeric(sub$Global_active_power)
png("plot1.png", width=480, height=480)
plot(day, global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")


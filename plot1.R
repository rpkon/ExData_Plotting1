dat <- read.table("household_power_consumption.txt", header=T, stringsAsFactors=F, sep=";")
sub <- dat[dat$Date %in% c('1/2/2007','2/2/2007'),]
global_active_power <- as.numeric(sub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_active_power, col ="red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()


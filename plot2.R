plot2 <- function() {
	data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', nrows=70000)
	data_subset <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
	gap <- as.numeric(as.character(data_subset$Global_active_power))
	datetime <- strptime(paste(data_subset$Date, data_subset$Time), "%d/%m/%Y %H:%M:%S")
	plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
	dev.copy(png, file="plot2.png")
	dev.off()
}
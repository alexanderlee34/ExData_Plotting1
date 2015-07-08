plot1 <- function() {
	data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', nrows=70000)
	data_subset <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
	gap <- as.numeric(as.character(data_subset$Global_active_power))
	hist(gap, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
	dev.copy(png, file="plot1.png")
	dev.off()
}

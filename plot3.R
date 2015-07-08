plot3 <- function() {
	data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', nrows=70000)
	data_subset <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
	esm1 <- as.numeric(as.character(data_subset$Sub_metering_1))
	esm2 <- as.numeric(as.character(data_subset$Sub_metering_2))
	esm3 <- as.numeric(as.character(data_subset$Sub_metering_3))
	datetime <- strptime(paste(data_subset$Date, data_subset$Time), "%d/%m/%Y %H:%M:%S")
	plot(datetime, esm1, type="l", col="black", xlab="", ylab="Energy sub metering")
	lines(datetime, esm2, col="red")
	lines(datetime, esm3, col="blue")
	legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	dev.copy(png, file="plot3.png")
	dev.off()
}
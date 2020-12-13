#Plot 3#

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
FiterData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GAP<-as.numeric(FiterData$Global_active_power)
datetime <- strptime(paste(FiterData$Date, FiterData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
S1 <- as.numeric(FiterData$Sub_metering_1)
S2 <- as.numeric(FiterData$Sub_metering_2)
S3 <- as.numeric(FiterData$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, S1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, S2, type="l", col="red")
lines(datetime, S3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()



#Plot 1#

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
FiterData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GAP<-as.numeric(FilterData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


#Plot 2#

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
FiterData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GAP<-as.numeric(FiterData$Global_active_power)
datetime <- strptime(paste(FiterData$Date, FiterData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime,GAP,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

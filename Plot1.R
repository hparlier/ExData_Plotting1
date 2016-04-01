## Quiz 1


## Set wd
setwd("~/Desktop/Quiz 1")

## Read Data into R

dataFile <- "~/Desktop/Quiz 1/household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep =";", stringsAsFactors = FALSE, dec = ".")

## We will only be using data from the dates 2007-02-01 and 2007-02-02
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()



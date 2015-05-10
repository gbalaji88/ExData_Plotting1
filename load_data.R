## This file loads the dataset
filename <- "household_power_consumption.txt"
alldata <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
attach(alldata)
## This section selects data from 2 days
dates <- Date == "1/2/2007" | Date == "2/2/2007"
FigData <- alldata[dates, ]
attach(FigData)
x <- paste(Date, Time)
FigData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(FigData) <- 1:nrow(FigData)
attach(FigData)
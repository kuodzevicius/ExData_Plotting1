setwd("C:\\Users\\lbale_000\\Documents\\GitHub\\ExData_Plotting1")

# read the data
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp, mode="wb")
data <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", header = TRUE, na.strings="?")
unlink(temp)

#Subset to relevant period
datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

#Adjust data/time variables
#datasub$Time <- strptime(datasub$Time, "%H:%M:%S")
datasub$Date <- as.Date(datasub$Date,"%d/%m/%Y")
data <- datasub
saveRDS(data, file="data.rds")


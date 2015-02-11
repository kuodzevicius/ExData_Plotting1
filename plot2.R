setwd("C:\\Users\\lbale_000\\Documents\\GitHub\\ExData_Plotting1")
data <- readRDS("data.rds")

#plot 2
data$weekday <- as.POSIXlt(paste(data$Date, data$Time), sep=" ")
png("plot2.png")
with(data, plot(weekday, Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()

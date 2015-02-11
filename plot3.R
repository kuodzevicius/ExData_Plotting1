setwd("C:\\Users\\lbale_000\\Documents\\GitHub\\ExData_Plotting1")
data <- readRDS("data.rds")

#plot 3
data$weekday <- as.POSIXlt(paste(data$Date, data$Time), sep=" ")
png("plot3.png")
with(data, {
  plot(weekday, Sub_metering_1, type="l",xlab="", ylab="Energy sub metering")
  lines(weekday,Sub_metering_2, col="red")
  lines(weekday,Sub_metering_3, col="blue")
})
legend("topright", lty=1, cex=0.8, legend=c("Sub_metering_1",  "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"))

dev.off()

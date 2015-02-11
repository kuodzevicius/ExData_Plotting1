setwd("C:\\Users\\lbale_000\\Documents\\GitHub\\ExData_Plotting1")
data <- readRDS("data.rds")

#plot 4
data$weekday <- as.POSIXlt(paste(data$Date, data$Time), sep=" ")
png("plot4.png")
par(mfrow=c(2,2))
with(data, plot(weekday, Global_active_power, type="l",ylab="Global Active Power",xlab=""))
with(data, plot(weekday, Voltage, type="l",ylab="Voltage",xlab="datetime"))

with(data, {
  plot(weekday, Sub_metering_1, type="l",xlab="", ylab="Energy sub metering")
  lines(weekday,Sub_metering_2, col="red")
  lines(weekday,Sub_metering_3, col="blue")
  legend("topright", lty=1, cex=0.75, text.font=0.5, bty="n",  legend=c("Sub_metering_1",  "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"))
})

with(data, plot(weekday, Global_reactive_power, type="l",xlab="datetime"))

dev.off()


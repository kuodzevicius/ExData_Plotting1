setwd("C:\\Users\\lbale_000\\Documents\\GitHub\\ExData_Plotting1")
source("data_download.R")

#plot 1
png("plot1.png")
with(datasub, hist(Global_active_power, col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power"))
dev.off()

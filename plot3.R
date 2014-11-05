#head -n1 household_power_consumption.txt > power.txt 
#grep '^1/2/2007' household_power_consumption.txt >> power.txt 
#grep '^2/2/2007' household_power_consumption.txt >> power.txt 

power = read.csv2('power.txt', stringsAsFactors = FALSE) 
power$time = strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S") 
plot(power$time, power$Sub_metering_1, 'l', ylab = 'Energy sub metering')    
lines(power$time, power$Sub_metering_2, 'l', col = 'red')  
lines(power$time, power$Sub_metering_3, 'l', col = 'blue') 
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
	lty=1, col=c("black", "red", "blue")) 

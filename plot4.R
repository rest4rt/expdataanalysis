
#head -n1 household_power_consumption.txt > power.txt 
#grep '^1/2/2007' household_power_consumption.txt >> power.txt 
#grep '^2/2/2007' household_power_consumption.txt >> power.txt 

power = read.csv2('power.txt', stringsAsFactors = FALSE) 
power$time = strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S") 

par(mfrow=c(2,2))

plot(power$time, power$Global_active_power, 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')

plot(power$time, power$Voltage, 'l', xlab = 'datetime', ylab = 'Voltage')

plot(power$time, power$Sub_metering_1, 'l', xlab = '', ylab = 'Energy sub metering')    
lines(power$time, power$Sub_metering_2, 'l', col = 'red')  
lines(power$time, power$Sub_metering_3, 'l', col = 'blue') 
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
	lty=1, col=c("black", "red", "blue"), bty='n')

plot(power$time, power$Global_reactive_power, 'l', ylab = 'Global_reactive_power', xlab = 'datetime' )

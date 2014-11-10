#head -n1 household_power_consumption.txt > power.txt 
#grep '^1/2/2007' household_power_consumption.txt >> power.txt 
#grep '^2/2/2007' household_power_consumption.txt >> power.txt 

power = read.csv2('power.txt', stringsAsFactors = FALSE) 
power$time = strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S") 
png('plot2.png')
plot(power$time, power$Global_active_power, 'l', ylab = 'Global Active Power (kilowatts)')
dev.off()

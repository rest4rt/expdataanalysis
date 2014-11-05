#head -n1 household_power_consumption.txt > power.txt 
#grep '^1/2/2007' household_power_consumption.txt >> power.txt 
#grep '^2/2/2007' household_power_consumption.txt >> power.txt 

power = read.csv2('power.txt', stringsAsFactors = FALSE) 
hist(as.numeric(power$Global_active_power), main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'red')

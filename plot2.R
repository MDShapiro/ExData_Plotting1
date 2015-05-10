## Read Feb 1 and Feb 2 2007 values from household_power_consumption.txt
## Once data is read, create historgram colored in read
## for Global Active Power and tile the plot "Global Active Power"
require(sqldf)
observations<-read.csv.sql("/Users/Michael/Desktop/household_power_consumption.txt", sql="SELECT * FROM file WHERE Date IN ('2/2/2007','1/2/2007')", sep=";")
observations$Date<-as.Date(observations$Date, "%d/%m/%Y")
observations$Time<-strptime(observations$Time, "%H:%M:%S")
plot(observations$Global_active_power, type="l")
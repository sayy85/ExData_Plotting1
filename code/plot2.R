plot2 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot2.png',width=480, height=480,unit='px')
  plot(D$Time,D$Global_active_power,type='l',ylab='Global Active Power (kilowatts)',xlab='')
  dev.off()
}
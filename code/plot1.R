plot1 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot1.png',width=480, height=480,unit='px')
  hist(D$Global_active_power, xlab='Global Active Power (kilowatts)',ylab='Frequency', col='red', main='Global Active Power')
  dev.off()
}
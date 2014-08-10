plot1 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot1.png',width=3D480, height=3D480,unit=3D'px')
  hist(D$Global_active_power, xlab=3D'Global Active Power =
(kilowatts)',ylab=3D'Frequency', col=3D'red', main=3D'Global Active =
Power')
  dev.off()
}
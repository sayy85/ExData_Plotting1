plot2 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot2.png',width=3D480, height=3D480,unit=3D'px')
  plot(D$Time,D$Global_active_power,type=3D'l',ylab=3D'Global Active =
Power (kilowatts)',xlab=3D'')
  dev.off()
}
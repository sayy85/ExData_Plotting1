plot3 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot3.png',width=480, height=480,unit='px')
  plot(D$Time,D$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='')
  points(D$Time,D$Sub_metering_2,type='l',col='red')
  points(D$Time,D$Sub_metering_3,type='l',col='blue')
  legend('topright',col=c('black','red','blue'),lty=c(1,1),legend=c(names(D[,7:9])))
  dev.off()
}
plot4 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot4.png',width=480, height=480,unit='px')

  par(mfrow=c(2,2))
  with(D,{
    plot(Time,Global_active_power,type='l',ylab='Global Active Power',xlab='')
    plot(Time,Voltage,type='l',ylab='Voltage',xlab='datetime')
    plot(Time,Sub_metering_1,type='l',ylab='Energy sub metering',xlab='')
    points(Time,Sub_metering_2,type='l',col='red')
    points(Time,Sub_metering_3,type='l',col='blue')
    legend('topright',col=c('black','red','blue'),lty=c(1,1),legend=c(names(D[,7:9])),bty='n') 
    plot(Time,Global_reactive_power,type='l',xlab='datetime') 
  })
  dev.off()
}
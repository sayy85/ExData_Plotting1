plot4 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot4.png',width=3D480, height=3D480,unit=3D'px')

  par(mfrow=3Dc(2,2))
  with(D,{
    plot(Time,Global_active_power,type=3D'l',ylab=3D'Global Active =
Power',xlab=3D'')
    plot(Time,Voltage,type=3D'l',ylab=3D'Voltage',xlab=3D'datetime')
    plot(Time,Sub_metering_1,type=3D'l',ylab=3D'Energy sub =
metering',xlab=3D'')
    points(Time,Sub_metering_2,type=3D'l',col=3D'red')
    points(Time,Sub_metering_3,type=3D'l',col=3D'blue')
    =
legend('topright',col=3Dc('black','red','blue'),lty=3Dc(1,1),legend=3Dc(n=
ames(D[,7:9])),bty=3D'n')=20
    plot(Time,Global_reactive_power,type=3D'l',xlab=3D'datetime')=20
  })
  dev.off()
}
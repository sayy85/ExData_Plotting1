plot3 <-function() {
  #Read data
  source('EDA_P1_ReadData.R')
  D<-ReadData()

  #Plot the data and save the plot as png
  png('plot3.png',width=3D480, height=3D480,unit=3D'px')
  plot(D$Time,D$Sub_metering_1,type=3D'l',ylab=3D'Energy sub =
metering',xlab=3D'')
  points(D$Time,D$Sub_metering_2,type=3D'l',col=3D'red')
  points(D$Time,D$Sub_metering_3,type=3D'l',col=3D'blue')
  =
legend('topright',col=3Dc('black','red','blue'),lty=3Dc(1,1),legend=3Dc(n=
ames(D[,7:9])))
  dev.off()
}
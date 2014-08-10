## The function ReadDate reads data on Electric power consumption
## and returns data.frame
## Requires sqldf
## Written and tested on Windows 7/8


ReadData <- function() {
  # checks whether the data file exists in working directory,=20
  # if not - download and unzip

  fName=3D'household_power_consumption.txt'
  =
fURL=3D'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_p=
ower_consumption.zip'
  if(!file.exists(fName)){
    setInternet2(use =3D TRUE) ## otherwise did not work on Win7
    download.file(fURL, basename(fURL))
  }
  unzip(basename(fURL))
 =20
  # Reads data matching prespecified dates and formats it
  library(sqldf)
  D<-read.csv.sql(fName, sql =3D "select * from file where =
Date=3D'2/2/2007' OR Date=3D'1/2/2007'", header =3D TRUE, sep=3D';')
  D$Time<-as.POSIXlt(paste(D$Date,D$Time, sep=3D' '),format=3D'%d/%m/%Y =
%H:%M:%S')
  D$Date<-as.Date(D$Date,format=3D'%d/%m/%Y')
  return(D)
}
## The function ReadDate reads data on Electric power consumption
## and returns data.frame
## Requires sqldf
## Written and tested on Windows 7/8


ReadData <- function() {
  # checks whether the data file exists in working directory, 
  # if not - download and unzip

  fName='household_power_consumption.txt'
  fURL='https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  if(!file.exists(fName)){
    setInternet2(use = TRUE) ## otherwise did not work on Win7
    download.file(fURL, basename(fURL))
  }
  unzip(basename(fURL))
  
  # Reads data matching prespecified dates and formats it
  library(sqldf)
  D<-read.csv.sql(fName, sql = "select * from file where Date='2/2/2007' OR Date='1/2/2007'", header = TRUE, sep=';')
  D$Time<-as.POSIXlt(paste(D$Date,D$Time, sep=' '),format='%d/%m/%Y %H:%M:%S')
  D$Date<-as.Date(D$Date,format='%d/%m/%Y')
  return(D)
}
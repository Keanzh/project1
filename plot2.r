#############################################################################
#plot2
rm(list=ls())
setwd("D:/Lehigh-JienZhang/Courses/Data_analysis_online_course")
data = read.csv("data.txt", header=FALSE, sep=";")
dates<-data[,1]
times<-data[,2]
x<-paste(dates,times)
x1<-strptime(x,"%d/%m/%Y %H:%M:%S")
plot(x1,data[,3], "l", xlab=NA, ylab="Global Active Power (kilowatts)")
dev.copy(png,'plot2.png')
dev.off()

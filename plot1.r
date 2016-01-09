rm(list=ls())

#############################################################################
#plot1
#Read in all files
setwd("D:/Lehigh-JienZhang/Courses/Data_analysis_online_course")
data = read.csv("data.txt", header=FALSE, sep=";")
strptime(data[,1],"%d/%m/%Y")
data[,1]<-as.Date(data[,1],"%d/%m/%Y")
#png('plot1.png')
hist(data[,3], col="red", main="Global Active Power", xlab="Global  Active Power(kilowatts)")
dev.copy(png,'plot1.png')
dev.off()
#############################################################################
#plot3
setwd("D:/Lehigh-JienZhang/Courses/Data_analysis_online_course")
data = read.csv("data.txt", header=FALSE, sep=";")
dates<-data[,1]
times<-data[,2]
x<-paste(dates,times)
x1<-strptime(x,"%d/%m/%Y %H:%M:%S")
a7<-data[,7]
a8<-data[,8]
a9<-data[,9]
plot(x1,a7, "l", ylim=range(c(data[,7],data[,8])),xlab=NA, ylab="Energy sub metering")
par(new = TRUE)
plot(x1,a8, "l",ylim=range(c(data[,7],data[,8])), xlab = "", ylab = "", col="red")
par(new = TRUE)
plot(x1,a9, "l",ylim=range(c(data[,7],data[,8])), xlab = "", ylab = "", col="blue")

legend("topright", lty=1, col=c('black','red','blue'),
legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,'plot3.png')
dev.off()

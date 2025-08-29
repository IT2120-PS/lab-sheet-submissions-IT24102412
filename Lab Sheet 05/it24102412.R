setwd("C:\\Users\\it24102412\\Desktop\\it24102412_ps_lab 5")
delivery_data <- read.table("Exercise - Lab 05.txt", header = FALSE)
colnames(delivery_data) <- c("DeliveryTime")
Delivery_Times <- delivery_data
fix(data)
data
names(data)<-c("X1","X2")
attach(data)
hist(X2,main ="Histogram for delivery times")
histogram<-(X2,main ="Histogram for delivery times",breks=deq(20,70),right=FALSE)

breaks <-round(histogram$breaks)
freq<-histogram$counts
mids<- histogram$mids
for (i in 1: length(breaks)-1){
  classes[i]<-paste("[",breaks[i],",",breaks[i+1],")")
}
cbind(Classes = classes, Frequency = freq)
lines(mids,freq)
plot(mids,freq,type ="l",main="Frequency Polygon for delivery_times",xlab="delivery_times",ylab="Frequency",ylim=c(0,max(freq)))
cum.freq <- cumsum(freq)
new<-c()
for (i in 1:length(breaks)) {
  if(i==1) {
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}
plot(breaks,new,type = "o",main = "Cumulative Frequency Polygon for Shareholders",xlab ="delivery_times",ylab = "Cumulative Frequency",ylim=c(0,max(cum.freq)))
cbind(Upper = breaks, CumFreq = new)

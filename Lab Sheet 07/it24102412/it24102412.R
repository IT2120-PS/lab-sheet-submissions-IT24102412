setwd("C:\\Users\\minun\\OneDrive\\Desktop\\it24102412")

min_time <-0
max_time <-40

prob <-punif(25, min_time,max_time)-punif(10,min_time,max_time)
prob

pexp(2,rate=0.33,lower.tail = TRUE)

mean<- 100
sd<- 15
prob_above_130<- 1-pnorm(130,mean,sd)
prob_above_130

iq_95th <- qnorm(0.95,mean,sd)
iq_95th
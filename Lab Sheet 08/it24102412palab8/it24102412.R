setwd("C:\\Users\\it24102412\\Desktop\\it24102412palab8")

data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)


fix(data)
attach(data)
weights <- c(2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53, 2.57, 2.85, 
             2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47, 2.66, 2.06, 2.41, 2.65, 
             2.76, 2.43, 2.61, 2.57, 2.73, 2.17, 2.67, 2.05, 1.71, 2.32, 2.23, 
             2.76, 2.7, 2.13, 2.75, 2.2)
popmn <- mean(weights)
popsd <- sd(weights)

cat("Population Mean: ", popmn, "\n")
cat("Population Standard Deviation: ", popsd, "\n")


set.seed(123)


sample_means <- numeric(25)
sample_sds <- numeric(25)


for(i in 1:25) {
  sample_data <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}


cat("Sample Means: ", sample_means, "\n")
cat("Sample Standard Deviations: ", sample_sds, "\n")


mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)


cat("Mean of Sample Means: ", mean_sample_means, "\n")
cat("Standard Deviation of Sample Means: ", sd_sample_means, "\n")


cat("True Population Mean: ", popmean, "\n")
cat("True Population Standard Deviation: ", popsd, "\n")

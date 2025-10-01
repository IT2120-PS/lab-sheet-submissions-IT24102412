setwd("C:\\Users\\minun\\OneDrive\\Desktop\\it24102412_ps_lab9")
--1--
  
set.seed(123)
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

--2--
  
 t_test <- t.test(baking_time, mu = 46, alternative = "less")
t_test

--3--
  
  p-value < 0.05 , Reject H₀ , baking time is significantly less than 46 minutes.

p-value >= 0.05 , Fail to reject H₀ ,not enough evidence to say baking time < 46

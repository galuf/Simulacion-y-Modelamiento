rm(list=ls())

k = 1000
u = runif(k,0,1)
n=1:k

covarianza = cumsum(u*exp(u))/n-(cumsum(u)/(n))*(cumsum(exp(u))/n)

covarianza[length(u)]
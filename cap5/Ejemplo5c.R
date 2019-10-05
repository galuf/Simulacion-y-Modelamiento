# Funcion Gamma como suma de exponeciales

rm(list=ls())
n = 12
k = 1000 

x = rep(1,k)
lambda = 1


for(i in 1:k){
  u = runif(n,0,1)
  proD = cumprod(u)
  x[i] = (-1/lambda)*log(proD[n])
}

hist(x)
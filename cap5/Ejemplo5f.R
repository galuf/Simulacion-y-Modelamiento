# Distribucion Normal Mediante Aceptacion rechazo

rm(list=ls())

k = 1000
x = rep(1,k)
lambda = 1

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  Y = (-1/lambda)*log(u1)
  while(u2 > exp(Y - (Y^2)/2 - 1/2)){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)
    Y = (-1/lambda)*log(u1)
  }
  x[i] = Y
}

hist(x)
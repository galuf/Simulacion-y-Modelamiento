# Funcion Gamma con rechazo
rm(list=ls())

k = 1000

x =rep(1,k)
lambda = 2/3
n = 3/2

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)  
  Y = (-1/lambda)*log(u2)
  while(u1 > sqrt(2*exp(1)/3)*(Y^(1/2))*exp(-Y/3) ){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)  
    Y = (-1/lambda)*log(u2)
  }
  x[i] = Y
}

hist(x)
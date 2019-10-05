# Metodo de la composicion
rm(list=ls())

k = 1000
x = rep(1,k)

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  while(u1 > exp(u2 - 1) ){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)
  }
  x[i] = u2
}

hist(x)
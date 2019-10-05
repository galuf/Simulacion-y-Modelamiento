# Metodo de Aceptacion Rechazo

rm(list=ls())
k = 1000
x = rep(1,k)
for (i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)  
  while(u1 > (256/27)*(u2)*(1-u2)^3){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)
  }  
  x[i] = u2
}

hist(x,main = 'Rechazo')
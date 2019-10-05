# Metodo de la transformada inversa

rm(list=ls())

k = 1000
n = 10
u = runif(k,0,1)
x = rep(1,k)

for(i in 1:k){
  x[i] = u[i]^(1/n)
}

hist(x,main = 'Transformada Inversa')
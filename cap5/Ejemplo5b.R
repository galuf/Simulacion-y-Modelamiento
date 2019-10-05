#Tranformada inversa de Funcion Exponencial

rm(list=ls())
k = 1000

u = runif(k,0,1)
x = rep(1,k)

for(i in 1:k){
  x[i] = -log(u[i])
}

hist(x,main ='Dist Exponencial')
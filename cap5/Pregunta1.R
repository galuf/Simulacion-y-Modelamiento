# Pregunta 1 Cap 5

rm(list=ls())

k  =1000
# Usaremos metodo de la transformada inversa
x = rep(1,k)

for(i in 1:k){
  u = runif(1,0,1)
  x[i] = log(u*(exp(1) - 1) + 1)
}

hist(x,main = 'Pregunta 1')
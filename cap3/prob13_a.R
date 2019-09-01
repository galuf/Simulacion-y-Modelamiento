rm(list=ls())

k = 1000
valores = rep(0,k) +1
n = 1:k

for(i in 1:k){
  producto = runif(1,0,1)
  while(producto >= exp(-3)){
    u = runif(1,0,1)
    producto = producto*u
    valores[i] = valores[i] + 1
  }
}

E = cumsum(valores)/n

plot(n,E,type = 'l',xlab = 'n', ylab = 'valor', main = 'Pregunta 13')

E[length(n)]


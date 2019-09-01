rm(list=ls())

k = 1000
valores = rep(0,k) #aqui deberia ser + 1 ----> Duda a resolver
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

E[length(n)]

preg_b = table(valores)/k

preg_b[1:7]

barplot(preg_b,main='Pregunta 13 b')
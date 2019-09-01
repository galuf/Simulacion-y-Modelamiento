rm(list=ls())

k = 10
num = rep(0,k)
u = runif(1,0,1)
n = 1:k
for (j in 1:k){
  i = 0
  suma = 0
  while(suma < 1){
    u = runif(1,0,1)
    suma = suma + u
    i = i + 1
  }
  num[j] = i
}
N = cumsum(num)/n

plot(n,N,type = 'l',xlab = 'n',ylab = 'valor', main = 'Pregunta 12')

N[length(u)]
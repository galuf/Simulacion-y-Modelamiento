rm(list=ls())

k = 1000

x = runif(k,0,1)
y = runif(k,0,1)

n = 1:k

int_aprox = cumsum( exp((x+y)^2) )/n

plot(n,int_aprox,type = 'l',xlab = 'n',ylab = 'valor',main = 'Pregunta 8')

int_aprox[length(x)]
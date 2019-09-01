rm(list=ls())

k = 1000
u = runif(k,0,1)
n = 1:length(u)

int_aprox = cumsum( (1-u^2)^(3/2) )/n

plot(n,int_aprox,type = 'l',xlab = 'n',ylab = 'valor',main = 'Problema 4')

int_aprox[length(u)]

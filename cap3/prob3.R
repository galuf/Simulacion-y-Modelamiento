
rm(list=ls())

k = 1000
u = runif(k,0,1)
n = 1:length(u)

int_aprox = cumsum( exp( exp( u ) ) )/n

plot(n,int_aprox,type='l',xlab='n',ylab = 'valor', main = 'Aproximacion de Integral')

int_aprox[length(u)]
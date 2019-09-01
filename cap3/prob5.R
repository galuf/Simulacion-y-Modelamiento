rm(list=ls())

k =1000
u=runif(k,0,1)
n=1:k

int_aprox = cumsum( 4*(exp( (4*u-2)*(4*u-2+1) )) )/n

plot(n,int_aprox,xlab = 'n',type = 'l',ylab = 'valor',main = 'Problema 5')

int_aprox[length(n)]
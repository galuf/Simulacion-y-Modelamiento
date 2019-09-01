rm(list=ls())

k =10000
y=runif(k,0,1)
n=1:k

int_aprox = cumsum( 2*(exp(-((1/y)-1)^2))/(y^2) )/n

plot(n,int_aprox,type = 'l',xlab = 'n',ylab = 'valor',main = 'pregunta 7')

int_aprox[length(y)]
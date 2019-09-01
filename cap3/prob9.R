rm(list=ls())

k = 1000
a = runif(k,0,1)
b = runif(k,0,1)
n = 1:k

int_aprox = cumsum( (b<a)*(exp( -( (1/b) -1 +(1/a) -1) ) )/(a*a*b*b) )/n

plot(n,int_aprox,type = 'l',xlab = 'n',ylab = 'valor',main = 'Pregunta 9')

int_aprox[length(a)]
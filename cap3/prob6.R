rm(list=ls())

k =1000
u=runif(k,0,1)
n=1:k

int_aprox = cumsum( (((1/u)-1)*(1+((1/u)-1)^2)^(-2))/(u^2) )/n

plot(n,int_aprox,type = 'l',xlab = 'n',ylab = 'valor', main = 'Pregunta 6')

int_aprox[length(u)]
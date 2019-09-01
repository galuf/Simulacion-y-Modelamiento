rm(list=ls())

k = 1000
u = runif(k,0,1)
n= 1:k

covarianza = cumsum(u*(sqrt(1-u^2)))/n - (cumsum(u)/n)*(cumsum(sqrt(1-u^2))/n)

plot(n,covarianza,type = 'l',xlab = 'n',ylab = 'valor',main = 'Pregunta 11 a')

covarianza[length(u)]
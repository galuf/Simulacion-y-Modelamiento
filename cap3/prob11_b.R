rm(list=ls())

k = 1000
u = runif(k,0,1)
n= 1:k

covarianza = cumsum((u^2)*(sqrt(1-u^2)))/n - (cumsum(u^2)/n)*(cumsum(sqrt(1-u^2))/n)

plot(n,covarianza,type = 'l',xlab = 'n',ylab = 'valor',main = 'Pregunta 11 b')

covarianza[length(u)]
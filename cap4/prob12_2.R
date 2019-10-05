#Metodo de Aceptacion Rechazo Poison Truncada
rm(list=ls())

genPosison = function(lambda,u){
  p = exp(-lambda)
  F = p
  i = 0
  while(u > F){
    p = (lambda/(i +1))*p
    F = F + p
    i = i + 1
  }
  return(i)
}

q_j = function(lambda,x){
  a = exp(-lambda)*(lambda^x)/factorial(x)
  return(a)
}

p_j = function(lambda,k,x){
  a = (exp(-lambda)*(lambda^x)/factorial(x))/ppois(k,lambda)
  return(a)
}

lambda = 2
k = 20
c = 1/ppois(k,lambda)
n = 1000
X = c(1:n)
for(i in 1:n){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  Y = genPosison(lambda,u1)
  while(u2 > p_j(lambda,k,Y)/(q_j(lambda,Y)*c)){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)
    Y = genPosison(lambda,u1)
  }  
  X[i] = Y
}

xx = table(X)/n
barplot(xx, main='Acep Rechazo Poison')

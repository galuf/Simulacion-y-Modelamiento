rm(list=ls())

factorial = function(j){
  pro = 1
  for(i in 1:j){
    pro = pro*i
  } 
  return(pro)
}

fun = function(k,lambda){
  suma = 0 
  for(i in 1:k){
    suma = suma + (lambda^i)/factorial(i)
  }
  return(suma)
}

ecuacion = function(){
  k = 10
  lambda = 1
  i = 0
  pr = 1/fun(k,lambda)
  f = pr
  
  nn = 100
  num = c(1:nn)
  
  u = runif(1,0,1)
  j = 1
  while(u >= f){
    pr = (lambda/(j+1))*pr
    f = f + pr
    j = j + 1
  }
  return(j)
}
n= 1000
num = c(1:n)

for(i in 1:n){
  num[i] = ecuacion()
}
  
nn = 1:n

Ec = table(num)
Ec
barplot(Ec)
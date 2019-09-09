rm(list=ls())

 funcion_dada = function(x){
   return(x*x)
 } #funcion de masa de probabilidad
 
 k = 100
 num = c(1:k)
 u = runif(1,0,1)
 
 for(i in i:k){
  j = 1
  u = runif(1,0,1)
  while(u >= F[j]){
    j = j + 1
  }
  num[i] = j
 }

 distribucion = tabulate(num)
 tabulate
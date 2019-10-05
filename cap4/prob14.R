# Problema 14

rm(list=ls())
k = 100000
x = c(1:k)

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  if(u1 < 11/20){
    x[i] = 2*floor(5*u2) + 5 
  }else{
    x[i] = 2*floor(5*u2) + 6
  }
}

xx = table(x)/k
barplot(xx,main = 'Composicion')
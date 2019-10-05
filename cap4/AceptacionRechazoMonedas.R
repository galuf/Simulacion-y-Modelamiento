rm(list=ls())
  
p = c(1/8,3/8,3/8,1/8)
q = 1/4
c = max(p)/q
k = 1000  

X = c(1:k)

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  Y = floor(4*u2) + 1
  while(u1 > p[Y]/(c/4)){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)
    Y = floor(4*u2) + 1
  }  
  X[i] = Y
}

xx = table(X)
barplot(xx)

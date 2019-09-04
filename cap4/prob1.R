rm(list=ls())

u = runif(1,0,1)
p = c(1/3,2/3)
pAcum = cumsum(p)
k = 100
num = rep(0,k)
nn = 1:k

for(i in 1:k){
  j = 1
  while(u >= pAcum[j]){
    j = j + 1
  }
  num[i] = j 
  u = runif(1,0,1)
}

dist = tabulate(num)

dist[1]/k
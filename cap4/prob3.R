rm(list=ls())

p = c(0.3,0.2,0.35,0.15)
pAcum = cumsum(p)

k = 1000
u = runif(1,0,1)
num = c(1:k)

for(i in 1:k){
  j = 1
  u = runif(1,0,1)
  while(u>=pAcum[j]){
    j = j + 1
  }
  num[i] = j
}

nn = tabulate(num)
barplot(nn)
#Se quiere simular una variable aleatoria X
# p1 = 0.20 , p2 =0.15 , p3 = 0.25 , p4 = 0.4
# pj = P{X = j}

rm(list=ls())
k = 1000
p = c(0.20,0.15,0.25,0.40)
pAcum = cumsum(p)
X = rep(0,k)

for(i in 1:k){
  j = 1
  U = runif(1,0,1)
  while(U > pAcum[j]){
    j = j+1
  }
  X[i] = j
}

xx = tabulate(X)
barplot(xx)
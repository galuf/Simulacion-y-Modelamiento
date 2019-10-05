
# Binomila y Poison

rm(list=ls())

binomialTransfInv = function(n,p){
  u = runif(1,0,1)
  c = p/(1-p)
  i = 0; pr = (1-p)^n ; F = pr
  while(u>=F){
    pr = ((c*(n-i))/(i+1))*pr
    F = F + pr
    i = i +1
  }
  return(i)
}

k = 1000
y = rep(0,k)
z = rep(0,k)

for(i in 1:k){
  r = binomialTransfInv(1000,0.05)*(-800*log(runif(1,0,1)))
  y[i] = (r >50000)
}

n = 1:k
z = cumsum(y)/n
plot(n,z)
z[length(n)]
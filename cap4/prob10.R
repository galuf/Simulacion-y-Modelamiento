
rm(list=ls())

r = 9
p = 0.7
k = 1000
esperanza = r*(1-p)/p + r

BinNegativa = function(r,p){
  pr = p^r
  F = pr
  u = runif(1,0,1)
  j = r
  while(u>=F){
    pr = pr*(j*(1-p)/(j+1-r))
    F = F +pr
    j = j + 1
  }
  return(j)
}

num = c(1:k)

for(i in 1:k){
  num[i] = BinNegativa(r,p)
}
nn = 1:k
xx = table(num)
binNegAcum = cumsum(num)/nn
binNegAcum[length(nn)]
barplot(xx)

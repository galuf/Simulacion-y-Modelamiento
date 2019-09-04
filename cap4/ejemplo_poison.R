
rm(list=ls())

lambda = 5

DistribucionPoison = function(lambda){
  i = 0; pr = exp(-lambda); F = pr;
  u = runif(1,0,1)
  while(u>=F){
    pr = ((lambda)/(i+1))*pr
    F = F + pr
    i = i +1
  }
  return(i)
}

####################### comprobacion ######

k = 1000
num = c(1:k)
n = 1:k
for(i in 1:k){
  num[i] = DistribucionPoison(lambda)
}

numAcum = cumsum(num)/n
numAcum[k]
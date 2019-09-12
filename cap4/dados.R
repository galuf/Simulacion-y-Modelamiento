rm(list=ls())

k = 1000

generaNum = function(){
  result = rep(0,12)
  suma = cumsum(result)
  j = 0
  while(suma[length(result)] != 11){
    num1 = floor(6*runif(1,0,1)) + 1
    num2 = floor(6*runif(1,0,1)) + 1
    result[num1 + num2] = 1
    suma = cumsum(result)
    j = j +1
  }
  return(j)
}

n = rep(0,k)
for(i in 1:k){
  n[i] = generaNum()
}
xx = 1:k
nAcum = cumsum(n)/xx
nn = table(n)
barplot(nn)
nAcum[k]
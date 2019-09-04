rm(list=ls())

n=100; p = 0.01 #probabilidad de la carta de 0.01 en 100 eventos
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

########################### estimacion de p ###########
k = 1000 
GenBinomial = rep(0,k)
for(i in 1:k){
  GenBinomial[i] = binomialTransfInv(n,p)  
}

nn = 1:k
BinoAcum = cumsum(GenBinomial)/nn
BinoAcum[k]
plot(nn,BinoAcum,type = 'l')
BinoAcum[k]/n

rm(list=ls())

k = 100
a_i = 0
N = 10000
#x = floor(N*runif(1,0,1)) + 1
for(i in 1:100){
  x = floor(N*runif(1,0,1)) + 1
  a_i = a_i + (N/k)*exp(x/N)  
}
a_i

rm(list=ls())
n = 3/2
u1 = runif(n,0,1)
producto = cumprod(u1)
k = 1000
X = c(1,k)
lambda = 1

for(i in 1:k){
  u1 = runif(n,0,1)
  producto = cumprod(u1)
  X[i] = (-1/lambda)*log(producto[length(u1)])
}
E = cumsum(X)/k
hist(X)
E[length(X)]
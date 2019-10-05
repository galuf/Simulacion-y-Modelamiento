# Problema 15
k = 10000
num = c(1:k)

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  if(u1 < 0.3){
    num[i] = floor(5*u2) + 1
  }else if(u1 < 0.6){
    num[i] = 3*(floor(2*u2) + 2)
  }else if(u1 < 0.86 ){
    num[i] = 3*(floor(2*u2)) + 7
  }else{
    num[i] = 8
  }
}

nn = table(num)/k
barplot(nn,main = 'Composicion - Prob 15')

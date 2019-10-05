rm(ls=list())

geometrica = function(p){
  u = runif(1,0,1)
  return(floor(log(u)/log(1-p)) + 1)
}
k = 1000
num = c(1:k)

for(i in 1:k){
  u1 = runif(1,0,1)
  if(u1 < 0.5){
    num[i] = geometrica(1/2)
  }else{
    num[i] = geometrica(1/3)
  }
}

nn = table(num)/k
barplot(nn, main = 'Composicion porb 16')
weibullFunDistri = function(x){
  alf = 0.6
  bet = 0.8
  return(1- exp(-1*alf*x^bet))
}

k = 100

weibull = function(){
  u = runif(1,0,1)
  i = 1
  while (u >= weibullFunDistri(i-1)) {
    i = i + 1
  } 
  return(i)
}
num = c(1:k)
for(i in 1:k){
  num[i] = weibull()
}

xx = table(num)
barplot(xx)

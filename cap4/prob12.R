# Metodo de la transformada inversa
rm(list=ls())
GeneraPoissonTruncada=function(lambda,k,n){
  x=rep(0,n)
  for(j in 1:n){
    i=0; p=exp(-lambda)/ppois(k,lambda);F=p;u=runif(1,0,1)
    while (u >= F){
      p=(lambda*p)/(i+1)
      F=F+p
      i=i+1
    }
    x[j]=i
  }
  return(x)
}

k=20; lambda=2;n=1000
x=GeneraPoissonTruncada(lambda,k,n)
xx=table(x)/n
barplot(xx,main = "Poisson Truncada - Transformada Inversa")
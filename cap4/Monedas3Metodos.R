rm(list=ls())

# X ~ numero de caras al lansar una moneda 3 veces

p = c(1/8,3/8,3/8,1/8)

# Metodo de la inversa

pAcum = cumsum(p)
k = 1000
num = c(1,k)
  
for(i in 1:k){
  u = runif(1,0,1)
  j = 1
  while(u>pAcum[j]){
    j = j + 1  
  }
  num[i] = j
}

nn = table(num)/k

barplot(nn, main = 'Metodo inversa')

# Metodo de aceptacion rechazo

p1 = c(1/8,3/8,3/8,1/8)

q = rep(1/4,4)
c = (3/8) / (1/4)
k1 = 1000
num1 = c(1:k1)

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  Y = floor(4*u1) + 1
  while(u2 > p1[Y]/(q[Y]*c)){
    u1 = runif(1,0,1)
    u2 = runif(1,0,1)
    Y = floor(4*u1) + 1
  }
  num1[i] = Y
}

nn1 = table(num1)/k1
barplot(nn1,main = 'Acep Rechazo')


# Metodo de la compocision

p2 = c(1/8,3/8,3/8,1/8)
k2 = 1000
num2 = c(1:k2)

for(i in 1:k){
  u1 = runif(1,0,1)
  u2 = runif(1,0,1)
  if(u2 < 1/4){
    num2[i] = (floor(2*u1) + 1)^2
  }else{
    num2[i] = (floor(2*u1) + 2)
  }
}

nn2 = table(num2)/k
barplot(nn2,main = 'Composicion')
#Genearcion de nuemros aleatorios en base a lansamiento de 3 monedas
# X = {#caras en el evento}

rm(list=ls())

k = 100
p = c(1/8,3/8,3/8,1/8)
pAcum = cumsum(p)
u = runif(1,0,1)
num = c(1:k)

for(i in 1:k){
  j = 0
  u = runif(1,0,1)
  while(u >= pAcum[j+1]){
    j = j + 1
  }
  num[i] = j
}

kk = 1:k
numAcum = cumsum(num)/kk

nn = table(num)
barplot(nn)

numAcum[k]


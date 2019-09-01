rm(list=ls())

x0 = 3
k = 10
num = c(1:k)

i = 1
while(i<k+1){
  num[i] = (5*x0 + 7)%%200
  x0 = num[i]
  i = i +1
}

num
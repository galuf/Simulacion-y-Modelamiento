rm(list=ls())

num = c(1:10)

x0 = 5

i = 1

while(i<11){
    
  num[i] = (3*x0)%%150
  x0 = num[i]
  i = i +1
}
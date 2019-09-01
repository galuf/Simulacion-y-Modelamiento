
rm(list=ls())
k = 1000
x = runif(k,0,1)
y = runif(k,0,1)

xp = 2*x -1
yp = 2*y -1

pi_aprox = cumsum( ((xp^2 + yp^2) <= 1) )/k

pi_aprox[length(y)]

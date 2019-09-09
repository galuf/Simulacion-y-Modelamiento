rm(list = ls())
k=10000
u=matrix(runif(2*k,0,1),nrow=k,ncol = 2)
r=0.5
h_xz=(((u[,1]-0.5)^2)+((u[,2]-0.5)^2)<=r^2)*(sin(u[,1]*u[,2]))/((u[,1]^2)*(u[,2]^2))
n=1:length(h_xz)
h_xz_cumsum=cumsum(h_xz)/n
plot(n,h_xz_cumsum,type = "l")
h_xz_cumsum[length(n)]
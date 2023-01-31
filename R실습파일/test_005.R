rm(list=ls())
a <- list(name='Julie', age=25, h_w=c(160, 48))
v1 <- a['name'] # List
v2 <- a$name # Scalar
v3 <- a[['name']] # Scalar
v4 <- a[[3]]
str(a)
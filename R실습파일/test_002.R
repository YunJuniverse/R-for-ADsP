rm(list=ls())
iv <- c(1, 2, 3)
cv <- c('A', "B", 'C')
bv <- c(TRUE, FALSE, TRUE)
fv <- c(3.4, 2.5, 8)
icv <- c(iv, cv, bv)



rm(list=ls())
v1 = seq(1, 5)  # v11 = 1:5
v2 = seq(1, 10, 2)
v3 = seq(1, 10, length=4)
v4 = seq(1, 3, length=5)



rm(list=ls())
v1 = rep(1, 5)
v2 = rep(1, time=5)
v3 = rep(3:5, time=3)
v4 = rep(3:5, each=2)
v5 = rep(seq(1,5,2), each=2)




rm(list=ls())
v1 <- seq(2, 10, 2)
v2 <- rep(2, 5)
v3 <- v1 + v2
v4 <- v1 %/% v2
v5 <- v1 ^ v2
x <- c(1, 4, 8)
y <- c(2, 3)
z <- t(y)
m <- x %*% z

rm(list=ls())
v1 <- rep(3, 6)
v2 <- c(1, 2, 3)
v3 <- v1 + v2
v4 <- v2 + 3


rm(list=ls())
v1 <- 1:5   # c(1,2,3,4,5) - 동영상에서 말할 때 틀렸습니다.
r1 = v1[3]
r2 = v1[-3]
r3 = v1[-c(1, 4)]
r4 = v1[v1%%2 == 1]
names(v1) <- c('A', 'B', 'C', 'D', 'E')
r5 = v1['B']
r6 = v1[2]

rm(list=ls())
r1 <- as.integer(3.14)  # 소수점 아래 절삭
r2 <- as.numeric('abc')
r3 <- as.numeric(TRUE)
r4 <- as.logical(0.1)

rm(list=ls())
r1 <- as.Date('2021-5-01')
#r2 <- as.Date('03/14/2021')
r3 <- as.Date('03/14/2021', format='%m/%d/%Y')
r4 <- format(Sys.Date())
r5 <- format(Sys.Date(), format='%m/%d/%Y')

rm(list=ls())
r1 <- format(Sys.Date(), '%a')
r2 <- format(Sys.Date(), '%b')
r3 <- format(Sys.Date(), '%y')
r4 <- format(Sys.Date(), '%Y')
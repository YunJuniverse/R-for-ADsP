rm(list=ls())
# 어느 AS센터에 1시간당 평균 120건의 전화가 온다. 
# 이때 1분 동안 걸려오는 전화 요청이 4건 이하일 확률은?
p1 = ppois(q=4, lambda = 120/60, lower.tail=TRUE)
p2 = dpois(x=10, lambda = 10)

p1 = dexp(x=1, rate = 0.2, log=False)
p2 = pexp(q=1, rate = 0.2, lower.tail=TRUE)

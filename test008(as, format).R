rm(list=ls())
r1 <- as.integer(3.14) # 소수점 아래 절삭
r2 <- as.numeric('abc') # 수치로 바꿀 수 없음
r3 <- as.numeric(TRUE) # 1로 변환
r4 <- as.logical(0.1) # 값이 있으면 1

rm(list=ls())
r1 <- as.Date('2021-05-01')
r2 <- as.Date('03/14/2021')
r3 <- as.Date('03/14/2021', format = '%m/%d/%Y') #format 파라미터로 날짜형식 지정
r4 <- format(Sys.Date())
r5 <- format(Sys.Date(), format = '%m/%d/%Y')

rm(list=ls())
r1 <- format(Sys.Date(), '%a') # 요일
r2 <- format(Sys.Date(), '%b') # 월
r3 <- format(Sys.Date(), '%y') # 두 자릿수 년도
r4 <- format(Sys.Date(), '%Y') # 네 자릿수 년도
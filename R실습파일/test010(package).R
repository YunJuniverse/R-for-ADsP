# reshape 패키지
install.packages('reshape') # 패키지 설치
library(reshape) # 패키지 불러오기, 문자열-이름 모두 사용 가능
install.packages('reshape2')
library(reshape2)

rm(list=ls())
data(airquality) # 데이터 불러오기
names(airquality)
colnames(airquality) <- tolower(colnames(airquality))
names(airquality)

a <- melt(airquality, id = c('month', 'day'), na.rm = TRUE)
head(airquality, 2)
head(a, 2)

r1 <- cast(a, day~month~variable) # 행을 day, 열을 month로 각 변수를 새롭게 배치(3차원 구조, variable은 면의 역할)
r2 <- acast(a, month~variable, mean) # (행-month, 열-variable) 각 변수의 month 평균
r3 <- cast(a, month~variable, mean, margins = c('grand_row', 'grand_col')) # (행-month, 열-variable) 각 변수의 month 평균을 구하고, 행과 열에 대한 소계 산출(grand)
r4 <- cast(a, day~month, mean, subset = variable == 'ozone') # 행을 day, 열을 month로 평균을 구함, subset 기능을 이용해 ozone 변수만 처리
r5 <- cast(a, month~variable, range) # (행-month, 열-variable) 각 변수의 month range. range는 min은 '_X1', max는 '_X2'라는 변수명을 끝에 붙여줌

# sqldf 패키지
install.packages('sqldf')
library(sqldf)

rm(list = ls())
data(iris)
r1 <- sqldf('select * from iris')
r2 <- sqldf('select * from iris limit 5')
r3 <- sqldf('select count(*) from iris where species like "ve%"') # 내부 문자열은 쌍따옴표
r4 <- head(iris, 5)


# plyr 패키지
install.packages('plyr')
library(plyr)

rm(list = ls())
set.seed(1) # 난수 발생 규칙 정하기
r1 <- data.frame(year = rep(2018:2021, each = 5), count = round(runif(20, 1, 40))) # round(runif(20, 1, 40): 1~40 사이 난수 20개
r2 <- ddply(r1, 'year', function (x){
  mean.count = mean(x$count) # 평균
  sd.count = sd(x$count) # Standard Deviation 표준편차
  cv = sd.count/mean.count # Coefficient of variation 변동 계수
  data.frame(m.count = mean.count, s.count = sd.count, cv.count = cv)
}) # r1의 year를 기준으로 count에 대한 mean, sd, sd.mean을 구하여 data.frame 생성
r3 <- ddply(r1, .(year), summarise, mean.count = mean(count))  # r1의 year를 기준으로 count의 평균을 구하여 요약 정보 생성
r4 <- ddply(r1, .(year), transform, total.count = sum(count)) # r1의 year를 기준으로 count의 합을 구하여 연산결과를 데이터프레임의 새로운 컬럼에 저장
r5 <- data.frame(A = c(1, 2, 3, 4), B = c(4, 5, 6, 7), C = c(1, 3, 5, 7))
r6 <- adply(r5, 1, sum)
r7 <- adply(r5, 2, sum)
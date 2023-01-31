rm(list = ls())
View(iris)
head(iris, 3)
tail(iris, 3)
summary(iris)
str(iris)
print(iris$Sepal.Width)
attach(iris) #데이터프레임 등 오브젝트 붙이기 자동화
print(Sepal.Width)
detach(iris)ㅡ #데이터프레임 등 오브젝트 붙이기 자동화 삭제
print(Sepal.Width)

getwd() # 현재 디렉토리 확인
setwd("C:/r_workspace/test") # 디렉토리 옮기기

rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df1 <- data.frame(name, gender, kor, eng)
df2 <- data.frame()
df3 <- data.frame(gender = c('f','m','f','m'),
                  score = c(90,100, 80, 95),
                  stringsAsFactors = TRUE
                  ) #특정 열만 변경하거나 추가 가능
str(df3)

df <- data.frame(name, gender, kor, eng)
v1 = df[1, 3]
df1 <- df[2,]
v2 = df[, 'name'] # 변수를 key값처럼 불러올 수 있다. 2번째 위치한 값이기 때문에 factor로 반환
v3 = df$name # $를 이용해 변수명으로 값 검색 가능
df2 = df[1] # 값이 하나만 있을 때는 열을 가져온다.
df3 = df['name'] 
v4 = df[[1]] # 대괄호로 한번 더 묶어주면 벡터타입으로 가져온다.
df4 = df[seq(1,3), c(1,3)]
df5 <- df[,2:4]
df6 <- df[1:3]
df7 <- df[-2]
df8 <- df[-c(2,3)]

rm(list = ls())
df = read.csv('./data/easySample3.csv', fileEncoding = "UTF-8-BOM")
df1 = df[, c(2, 4, 8, 9)]
df1$score <- c(90, 80, 50, 70, 100, 95, 85, 70, 95, 75)
df2 <- subset(df1, subset = (salary>5000))
df3 <- subset(df2, select = -score)
df4 <- subset(df1, subset = (salary>5000), select=-score)
df5 <- subset(df2, select=c(pname, dept, salary))
colnames(df5)[2]<-'departmnet'

rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df1 <- data.frame(name, gender, kor, eng)
df2 <- data.frame(matrix(seq(1,9), nrow=3))
df3 <- data.frame(gender = c('f', 'm', 'f', 'm'),
                  score = c(90, 100, 80, 95),
                  stringsAsFactors = TRUE)
str(df3)


rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df <- data.frame(name, gender, kor, eng)
v1 <- df[1, 3]
df1 <- df[2,]
v2 <- df[,'name']  # df$name
v3 <- df$name
df2 <- df[1]  # 1ë²? ?—´
df3 <- df['name']
v4 <- df[[1]]  # 1ë²? ?—´, vector
df4 <- df[seq(1, 3), c(1, 2)]
df5 <- df[,2:4]
df6 <- df[1:3]
df7 <- df[-2]
df8 <- df[-c(1, 3, 4)]


rm(list=ls())
df = read.csv('./data/easySample3.csv', fileEncoding='UTF-8-BOM')
df1 <- df[, c(2, 4, 8, 9)]
df1$score <- c(90, 80, 50, 70, 100, 95, 85, 70, 95, 75)
df2 <- subset(df1, subset=(salary>=5000))
df3 <- subset(df2, select=-score)
df4 <- subset(df1, subset=(salary>=5000), select=-score)
df5 <- subset(df2, select=c(pname, dept, salary))
colnames(df5)[2] <- 'department'










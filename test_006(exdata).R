# csv 파일 읽기
rm(list=ls())
df1 = read.csv(
  "data\\easySample.csv", # 상대 경로 읽기, '\'는 반드시 두번 사용
  fileEncoding="UTF-8-BOM")
print(df1)
write.csv(df1, 'data/mySample.csv')
print
write.csv(df1, 'data/mySample_wr.csv', row.names = FALSE)

# txt 파일 읽기
rm(list = ls())
cname <- c('ID', 'Name', 'Birth', 'Depth', 'English', 'Japanese', 'Chinese')
df2 = read.table('data/easySample.txt', # '/'는 한번만 사용
                 sep = ',',
                 col.names = cname)
print(df2)

# R 객체 저장/불러오기
rm(list = ls())
df3 = read.csv('data/mySample.csv')
save(df3, file = 'data/myObject1.Rdata')
rm(list = ls())
ls()
load('data/myObject1.Rdata')
print(df3)

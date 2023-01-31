rm(list=ls())
df = read.csv('.\\data\\easySample.csv', fileEncoding='UTF-8-BOM')
print(df)
write.csv(df, 'data/mySample.csv', row.names = FALSE)
write.csv(df, 'data/mySample_wr.csv', row.names = TRUE)





rm(list=ls())
cname <- c('ID', 'name', 'birth', 'dept', 'english','japanese', 'chinese')
df3 <- read.table('data/easySample.txt', sep=',', col.names = cname)
print(df3)



rm(list=ls())
df4 <- read.csv('data/mySample.csv')
save(df4, file='data/myObject1.Rdata')
rm(list=ls())
ls()
load('data/myObject1.Rdata')
print(df4)
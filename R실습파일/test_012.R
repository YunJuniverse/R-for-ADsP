install.packages('plyr')
library(plyr)
rm(list=ls())
r1 <- adply(iris, 1, function(x) {
  data.frame(newcol=x$Sepal.Length >= 5.0 & x$Species=='setosa')
})
head(r1, 3)

rm(list=ls())
set.seed(1)
r1 <- data.frame(year=rep(2018:2021, each=5), count=round(runif(20,1,40)))
r2 <- ddply(r1, 'year', function(x) {
  mean.count = mean(x$count)
  sd.count = sd(x$count)
  cv=sd.count/mean.count
  data.frame(m.count=mean.count, s.count=sd.count, cv.count=cv)
})

r3 <- ddply(r1, .(year, count>20), summarise, mean.count=mean(count))
r4 <- ddply(r1, .(year), transform, total.count=sum(count))

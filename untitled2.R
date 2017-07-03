results <- rbind(c(1, 4, 1), c(1, 1, 1), c(72, 71, 93))
#results
attributes(results)
dim(results)
rownames(results) <- c('Peter', 'Smith', 'Abc')
colnames(results) <- c('Physics', 'Chemistry', 'Maths')
results
maths <- c(55, 56, 57)
results <- rbind(results[1:2, ], 'Mike' = maths * 2, 'Boris' = results[3, ])
results
boxplot(results,main='mike',col='blue')
is.matrix(results)
results[2, 2] = 'mike'
results
is.matrix(results)

rowSums(results)
colSums(results)
sum(results)
mike <- cbind(results, (results * results) * results)
mike
dimnames(mike) <-
  list(c('Bob', 'NotBob', 'Boris', 'Tom'), c('a', 'b', 'c', 'd', 'e', 'f'))
mike
kk = matrix(
  c('Mike', 'Jon', 'Tom', 'Is Awesome', 'Is bad at Java', 'Is fat'),
  nrow = 3,
  ncol = 2
)
kk
results2 <- cbind(c(1, 1.1, 2, 3), c(3, 3.1, 3.2, 3))
results2
plot(
  results2,
  type = "h",
  col = "red",
  lwd = 20,
  main = "A graph"
)
lines(lowess(results2))
?plot

Result <- function(x) {
  r <- sum(x)
  r <- r * 100 / 450
  if (r > 60) {
    "Pass"
  } else{
    "fail"
  }
  
}
results
apply(results, 1, Result)
plot(
  c(1, 2, 3, 4, 5, 6),
  c(11, 12, 13, 14, 15, 16),
  'Mike',
  'Notmike',
  xlim = c(1, 10),
  ylim = c(1, 10),
  log = 'yx'
)
plot(
  table(rpois(100, 5)),
  type = "h",
  col = "red",
  lwd = 10,
  main = "A graph"
)

mydata = read.csv("c:/train-titanic.csv")  # read csv file
survivors <- cbind(mydata$Survived, mydata$Fare)
#plot(survivors)
#lines(lowess(survivors))
mydata
length(mydata$Survived[mydata$Survived == 1 & mydata$Sex == 'female'])
c(mydata$Survived[mydata$Survived > 0], mydata$Sex[mydata$Sex == 'male'])
nrow(mike)
mydata

x <- c(1:5)
y <- x # create some data

par(pch = 22, col = "blue") # plotting symbol and color
par(mfrow = c(2, 4)) # all plots on one page
opts = c("p", "l", "o", "b", "c", "s", "S", "h")
for (i in 1:length(opts)) {
  heading = paste("type=", opts[i])
  plot(x, y, main = heading)
  lines(x, y, type = opts[i])
}
library(RODBC)
myconn <-odbcConnect("abc", uid="root", pwd="1234")
wholetable <- sqlFetch(myconn, "testtable",rownames=FALSE,colnames=FALSE)
pundat <- sqlQuery(myconn, "select * from testtable")
close(myconn)
#pundat
wholetable
boxplot(results2,main='mike',col='blue')

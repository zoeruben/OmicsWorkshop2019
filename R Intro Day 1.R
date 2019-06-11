3^3
rm(list=ls())
17+3
17-3
17*3
17/3
17%%3
17%/%3
17==3
17!=3
17>=3
17<=3
17>3 | 17<3
rm(list=ls())
x <- -1.2345
y <- "Hi"
#data types
x <- as.integer(50)
class(x)
[1] "integer"
1+x
[1] 51
z <- as.numeric(x^2)
y <- as.character("Bye")
q <- as.complex(1+3i)
r <- 3==4
is.numeric(x)
is.numeric(y)
is.numeric(z)
is.numeric(q)
is.numeric(r)
is.logical(r)
q <- as.complex(1+3i)
rm(list=ls())
x <- -1.234
abs_x <- abs(x)
sqrt_abs_x <- sqrt(abs_x)
ceiling(x); ceiling (abs_x)
floor(x); floor(abs_x)
trunc(x); trunc(abs_x)
y <- round(x, 2)
cos_y <- cos(y)
z <- log(abs(y))
exp_z <- exp(z)
#vectors
rm(list=ls())
1:6
x <- c(1:6)
y <- c("a", "B", "c", "D")
y[3]
z <- seq(1, 40, 4)
z
z[3:6]
z[c(2,8,10)]
#statistical functions
#for vectors
length(y)
min(x); max(x)
sum(x); prod(x)
median(z)
mean(z)
var(z)
summary(z)
z <- seq(1, 40, 4)
z <- seq(2, 100, 2)
z
z_div_12 <- seq(z/12)
z_div_12 <- z[z%%12 == 0]
length(z_div_12)
sum(z_div_12)
prod(z[c(5, 10, 15)])
#6
y <- seq(0, 30, 3)
y[1:4]
#7
seq(y == z)
z[z == y]
y_div_2 <- y[y%%2 == 0]
y_div_2[2:6]
#8
1 + sqrt(z)
1 + z^2


#matrices
rm(list=ls())
x <- c(1, 2, 3, 4)
matrix(x, 2, 2)
matrix(x, 2, 2, byrow=TRUE)
A <- matrix(x, 2, 2)
A %*% A
solve(A)
diag(A)
B <- matrix(1, 3, 2)
B
t(B)
B %*% t(B)
dim(A)
dim(B)
nrow(B)
ncol(B)
z <- matrix(1:9, 3, 3)
z
z[1,]
z[,3]
z[1:2, 2:3]
z[c(1,3), c(1,3)]
mean(z)

rm(list=ls())
M<- array(1:24, dim=c(4,3,2))
M
dim(M)
M[,,1]
M[,,1, drop=FALSE]

rm(list=ls())
list(1, "A",3000)
mylist <- list(Names=c("a","b","c","d"), Values=c(3,1,2))
mylist
mylist[[1]]
mylist[["Names"]]
mylist$Values
mylist[[1]][4]

rm(list=ls())
x <- "Sample-36"
strsplit(x,'-')
substr(x, start=8, stop=9)
sub("36", "39", x)
paste(x, "is smaller", sep=" ")
nchar(x)
toupper(x)
tolower(x)
#data frames
rm(list=ls())
data(trees)
str(trees)
ncol(trees)
nrow(trees)
head(trees)
trees$Girth
trees$Girth[1:5]
trees[1:5,1]
trees[1:5,]$Girth
colnames(trees) <- tolower(colnames(trees))
avg_height <- mean(trees$height)
avg_girth_gr75 <- mean(trees$GIRTH >75)
avg_girth_gr75 <- mean(trees$girth[trees$height >75])
#3
max_height_15_35 <- max(trees$height[trees$volume<35 & trees$volume>15])

#setwd
rm(list=ls())
getwd()
setwd("C:/Users/Zoe/Documents/'Omics Workshop/CSB/r/sandbox")
getwd()
#readindata
ch6 <- read.table("../data/H938_Euro_chr6.geno", header=TRUE)
dim(ch6)
head(ch6)
tail(ch6)
sum(nA1A1)
sum(ch6$nA1A1)
ch6$ntot <- max(ch6$nA1A1+ch6$nA1A2+ch6$nA2A2)
num_ind <- rowSums(ch6$nA1A1+ch6$nA1A2+ch6$nA2A2)
sum(ch6$nA1A1)
sum(ch6$nA1A2)
sum(ch6$nA2A2)
num_ind <- max(rowSums(ch6[,5:7]))
####3####
length(ch6$nA1A2[ch6$nA1A2 == 0])
length(ch6$nA1A2[ch6$nA1A2 == 0 & ch6$nA1A1 + ch6$nA2A2 > 0])
####4####
length(ch6$SNP[(ch6$nA1A1 + ch6$nA2A2)/124 > 0.99])

####R Loops####
rm(list=ls())
myvec <- 1:10
for(i in myvec){
  a <- i^2
  print(a)
  i <- i + 1
}

i <- 1
while(i <= 10){
  a <- i^2
  print(a)
  i <- i +1
}

####R If-Then Statements####
rm(list=ls())
x <- seq(1, 50, 3)
y <- sample(x, size=1, replace = TRUE)
if(y%%2 == 0){
  print(paste(y, "is even"))
} else {
  print(paste(y, "is odd"))
}
if(y%%2 == 0){
  print(paste(y, "is even"))
} else if(y%%2 != 0) {
  print(paste(y, "is odd"))
}
y=1  
####Mind Expander 4####
if(y%%4 == 0){
  print(paste("the square root of y is", sqrt(y)))
}
if(y<15){
  print(paste("y is only value", y))
} else {
  print(paste("y is large"))
}

if(10 <= y <= 25){
  print(paste(y))
}

####R Functions####
rm(list=ls())
isTriangular <- function(y){
  n <- (sqrt((8*y)+1)-1) / 2
  if(as.integer(n) == n){
    return(TRUE)
  }
  return(FALSE)
}
isTriangular(4)
isTriangular(91)

####Sourcing R Functions####
rm(list=ls())
source("triangular.R")
isTriangular(4)
isTriangular(91)

findTriangular <- function(max_number){
  to_test <- 1:max_number
  triangular_numbers <- numeric(0)
  for(i in to_test){
    if(isTriangular(i)){
      triangular_numbers <- c(triangular_numbers, i)
    }
  }
  print(paste("There are",
              length(triangular_numbers),
              "triangular numbers between 1 and ",
              max_number))
  return(triangular_numbers)
}
findTriangular(100)


#####DAY 2####
pwd
getwd()
rm(list=ls())

####R Debugging
myfun<-function(i,x){
  for(z in 1:i){
    x<-x*2
    browser()
  }
  return(x)
}
myfun(3,4)

####R Statistics####
rm(list=ls())
data(iris)
str(iris)
summary(iris)
table(iris$Species)
table(iris$Species, iris$Petal.width)
range(iris$Petal.Length)
by(iris$Sepal.Length, iris$Species, mean)
cor(iris$Sepal.Length, iris$Petal.Length)
pairs(iris)
rank(iris$Sepal.Length)
setosa <- subset(iris, iris$Species == "setosa")
which(iris$Petal.Length > 6)
which.max(iris$Petal.Length)

t.test(Iris$Sepal.Width[Iris$Species == "setosa"],
       Iris$Sepal.Width[Iris$Species == "versicolor"])
t.test(Iris$Sepal.Width ~ Iris$Species, data=iris)

nosetosa <- subset(iris, iris$Species != "setosa")
t.test(iris$Sepal.Width[iris$Species == "setosa"],
       iris$Sepal.Width[iris$Species == "versicolor"],
       data=iris)
t.test(Sepal.Width ~ Species, data=nosetosa)

linear_model <- lm(Sepal.Width ~ Sepal.Length,
                   data=iris)
summary(linear_model)


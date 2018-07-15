##CreatingVectors
##Numeric
x <-c(0.5, 0.6)
x
##Logical
x <-c(TRUE, FALSE)
x
x <-c(T, F)
x
##Character
x <-c("a", "b", "c")
x
##Integer
x <- 9:29
x
##Complex
x <- c(1+0i, 2+4i)
x
##Vector
x <- vector("numeric", lenght = 10)
x

##Mixing Objects
##Character
y <- c(1.7, "a")
y
##Numeric
y <- c(TRUE, 2)
y
##Character
y <- c("a", TRUE)
y

##ExplicitCoercion
x<-0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
x<-c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)

##Lists
x<- list(1, "a", TRUE, 1 + 4i)
x

##Matrices
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
m <- matrix(1:6, nrow = 2, ncol = 3)
m
m <- 1:10
m
dim(m) <-c(2, 5)
m

##CBing-ing&RBinding
x<-1:3
y<-10:12
cbind(x, y)
rbind(x, y)

##Factors
x<- factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)
x<- factor(c("yes", "yes", "no", "yes", "no"),levels=c("yes", "no"))
x

##MissingValues
x<-c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)
x<-c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

##DataFrames
x<-data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)

##Names
x<- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)
x<- list(a = 1, b = 2, c = 3)
x
m<- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

##Read.table
data <- read.table("foo.txt")
initial <- read.table("database.txt", nrows = 100)
classes <- sapply(initial, class)
tabAll <- read.table("datatable.txt", colClasses = classes)

##DPutting
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
new.y <-dget("y.R")
new.y

##Dumping
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x,y)
source("data.R")
y
x

##FileConnections
str(file)
con <- file("foo.txt", "r")
data <- read.csv(con)
data <- read.csv("foo.txt")

##ReadingLines
con <- gzfile("words.gz")
x <- readLines(con, 10)
x

##Subsetting
x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x > "a"]
u <- x > "a"
u
x[u]

##SubsettingLists
x <- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1, 3)]
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]] ##computed index for 'foo'
x$name ##element 'name' doesn't exist!
x$foo ##element 'foo' does exist
x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]
x[[1]][[3]]
x[[c(2, 1)]]

##SubsettingAMatrix
x <- matrix(1:6, 2, 3)
x[1, 2]
x[2, 1]
x[1, ]
x[, 2]
x <- matrix(1:6, 2, 3)
x[1, 2]
x[1, 2, drop = FALSE]
x <- matrix(1:6, 2, 3)
x[1, ]
x[1, , drop = FALSE]

##PartialMatching
x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]

##RemovingNAValues
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]

airquality[1:6, ]
good <- complete.cases(airquality)
airquality[good, ][1:6, ]

##VectorizedOperations
x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

##VectorizedMatrixOperations
x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x * y ##element-wise multiplication
x / y
x %*% y ##true matrix multiplication

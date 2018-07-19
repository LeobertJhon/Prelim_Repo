z<- 12
class(z)

z <- c(12, FALSE)
class(z)

m <- c(10,13, 15, 33) 
n <- c(13, 22, 88, 110)
rbind(m, n)

z <- list(22, "a", "c", FALSE)
z[[2]]

z <- 10:40
y <- 3
z + y

x <- c(117, 114, 14, 15, 113, 112, 110)
x [x>=100]<-14
print(x)

ame = read.csv('hw1_data.csv')
names(ame)

ame = read.csv('hw1_data.csv')
ame[c(1:12),]

nrow(ame)

tail(ame,8)

name[112, ]
name[42, ]
name[82, ]

sub = subset(name, is.na(Ozone))
nrow(sub)
sub = subset(name, is.na(Solar.R))
nrow(sub)
sub = subset(name, is.na(Wind))
nrow(sub)
sub = subset(name, is.na(Temp))
nrow(sub)

sub = subset(name, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean)
sub = subset(name, !is.na(Solar.R), select = Solar.R)
apply(sub, 2, mean)
sub = subset(name, !is.na(Wind), select = Wind)
apply(sub, 2, mean)
sub = subset(name, !is.na(Temp), select = Temp)
apply(sub, 2, mean)

sub = subset(ame, Ozone > 26 & Temp > 80, select = Solar.R )
apply(sub, 2, mean)

sub = subset(ame, Month == 6, select = Temp)
apply(sub, 2, mean)
sub = subset(ame, Month == 8, select = Temp)
apply(sub, 2, mean)

sub = subset(ame, Month == 1 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 2 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 3 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 4 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 6 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 7 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 8 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 9 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 10 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 11 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(ame, Month == 12 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
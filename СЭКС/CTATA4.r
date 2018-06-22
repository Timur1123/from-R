names(cdc)
head(cdc)
tail(cdc)
summary(cdc$weight)
mean(cdc$weight)
var(cdc$weight)
median(cdc$weight)
table(cdc$smoke100)
table(cdc$smoke100)/20000
barplot(table(cdc$smoke100))
getwd()
Упражнение 2
summary(cdc$age)
57-31

summary(cdc$height)
70-64

table(cdc$gender)/20000

table(cdc$exerany)/20000


table(cdc$genhlth)/20000

table(cdc$gender, cdc$smoke100)

mosaicplot(table(cdc$gender, cdc$smoke100))

dim(cdc)

cdc[567, 6]
names(cdc)
cdc[1:10, ]
cdc[, 6]

mdata <- subset(cdc, cdc$gender == "m")
head(mdata)

under23andsmoke <-subset(cdc,cdc$age>23 &cdc$smoke100=="1")


boxplot(cdc$height)
summary(cdc$height)
boxplot(cdc$height ~ cdc$gender)
bmi <- (cdc$weight/cdc$height^2) * 703
boxplot(bmi ~ cdc$gender)
hist(cdc$age)
hist(bmi)
hist(bmi, breaks = 50)


plot(x=cdc$weight,y=cdc$wtdesire)


wdiff=cdc$wtdesire-cdc$weight
class(wdiff)

summary(wdiff)
#размах 800
boxplot(wdiff)
hist(wdiff,breaks = 50)

mwdiff=subset(cdc,cdc$gender=="m")$wtdesire-subset(cdc,cdc$gender=="m")$weight
fwdiff=subset(cdc,cdc$gender=="f")$wtdesire-subset(cdc,cdc$gender=="f")$weight
summary(mwdiff)
summary(fwdiff)
boxplot(wdiff ~ cdc$gender)





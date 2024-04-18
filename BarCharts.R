library(datasets)

?mtcars
head(mtcars)

barplot(mtcars$cyl)

clyinders <- table(mtcars$cyl)
barplot(clyinders)

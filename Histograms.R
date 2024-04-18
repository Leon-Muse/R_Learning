library(datasets)

head(iris)

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

pr(mfrow = c(3,1))

hist(iris$Petal.Width [iris$Psecies == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")









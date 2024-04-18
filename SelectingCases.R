library(datasets)

head(iris)

hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species)

hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petala Length: Virginica")

hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petala Length: versicolor")
     
hist(iris$Petal.Length[iris$Species == "setosa"],
    main = "Petal Length: setosa")

#short petals only
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

hist(iris$Petal.Length[iris$Species == "virginica" &
      iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")
### CREATE SUBSAMPLE

#Data is [ROWS, COLUMNS]
i.setosa <- iris[iris$Species == "setosa",]

head(i.setosa)
summary(i.setosa$Petal.Lenth)
library(datasets)

head(mtcars)


hist(mtcars$mpg)
hist(mtcars$wt)

plot(mtcars$wt, mtcars$mpg)

#add options
plot(mtcars$wt, mtcars$mpg,
  xlab = "Weight(in 1000 lbs)",
  ylab = "MPG",
  main = "MPG as Function of Car Weight",
  col = "#cc0000",
  pch = 19, #makes them solid circles
  cex = 1.5) #Make 150% size)

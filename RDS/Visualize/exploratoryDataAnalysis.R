library(tidyverse)
library(tidymodels)

ggplot(diamonds, aes(x = carat)) + 
  geom_histogram(binwidth = 0.5)


smaller <- diamonds |>
  filter(carat < 3)

ggplot(smaller, aes(x = carat)) +
  geom_histogram(binwidth = 0.01)


ggplot(diamonds, aes(x = y)) +
  geom_histogram(binwidth = 0.5)

ggplot(diamonds, aes(x = y)) + 
  geom_histogram(binwidth = .5) +
  coord_cartesian(ylim = c(0,50))


unsual <- diamonds |>
  filter(y < 3 | y > 20) |>
  select(price, x, y , z) |>
  arrange(y)

unsual


#diamonds2 <- diamonds |>
  #filter(between(y, 3, 20))

diamonds2 <- diamonds |>
  mutate(y = if_else(y < 3 | y > 20, NA, y))

ggplot(diamonds2, aes(x = x, y = y)) +
  geom_point()
#to suppress the warning that data was removes use na.rm = TRUE

nycflights13::flights |>
  mutate(
    cancelled = is.na(dep_time),
    sched_hour = sched_dep_time %/% 100,
    sched_min = sched_dep_time %% 100,
    sched_dep_time = sched_hour + (sched_min / 60)
  ) |>
  
  ggplot(aes(x = sched_dep_time)) +
  geom_freqpoly(aes(color = cancelled), binwidth = 1/4)
# you use is.na() to check if what is inside the parentheses is missing

ggplot(diamonds, aes(x = price)) +
  geom_freqpoly(aes(color = cut), binwidth = 500, linewidth = .75)

ggplot(diamonds, aes(x = price, y = after_stat(density))) + 
  geom_freqpoly(aes(color = cut), binwidth = 500, linewidth = .75)
#what does density do, don't fully understand


ggplot(diamonds, aes(x = cut, y = price)) + 
  geom_boxplot()


ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot()

ggplot(mpg, aes(x = fct_reorder(class, hwy, median), y = hwy)) +
  geom_boxplot()
#fct_reoder puts them in ascending order?

ggplot(mpg, aes(x = hwy, y = fct_reorder(class, hwy, median))) +
  geom_boxplot()

#two categorical variables
ggplot(diamonds, aes(x = cut, y = color)) +
  geom_count()

diamonds |>
  count(color, cut)

diamonds |>
  count(color, cut) |>
  ggplot(aes(x = color, y = cut)) +
  geom_tile(aes(fill = n))

#Two numerical Variables

ggplot(smaller, aes(x = carat, y = price)) + 
  geom_point()

ggplot(smaller, aes(x = carat, y = price)) +
  geom_point(alpha = 1 / 100)

ggplot(smaller, aes(x = carat, y = price)) +
  geom_bin2d()

ggplot(smaller, aes(x = carat, y = price)) +
  geom_hex()

ggplot(smaller, aes(x = carat, y = price)) +
  geom_boxplot(aes(group = cut_width(carat,0.1)))
#cute width?

diamonds <- diamonds |>
  mutate(
    log_price = log(price),
    log_carat = log(carat)
  )

diamonds_fit <- linear_reg() |>
  fit(log_price ~ log_carat, data = diamonds)

diamonds_aug <- augment(diamonds_fit, new_data = diamonds) |>
  mutate(.resid = exp(.resid))

ggplot(diamonds_aug, aes(x = carat, y = .resid)) +
  geom_point()


















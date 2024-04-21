library(tidyverse)
library(ggridges)

ggplot(mpg, aes(x = displ, y = hwy, color = class)) + 
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, shape = class)) + 
  geom_point()


ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point(color = "blue")

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(se = F)

ggplot(mpg, aes(x = hwy, y = drv, fill = drv, color = drv)) + 
  geom_density_ridges(alpha = 0.5, show.legend =  FALSE)

#scales = "free_y"









































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

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() + 
  facet_grid(drv ~ cyl)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(drv ~ cyl, scales = "free_y")


ggplot(diamonds, aes(x = cut)) + 
  geom_bar()

ggplot(mpg, aes(x = drv, color = drv)) +
  geom_bar()

ggplot(mpg, aes(x = drv, fill = drv)) + 
  geom_bar()

ggplot(mpg, aes(x = drv, fill = class)) + 
  geom_bar()

ggplot(mpg, aes(x = drv, fill = class)) +
  geom_bar(position = "dodge") #or fill, identity

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(position = "jitter") # or us geom_jitter()

bar <- ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = clarity, fill = clarity),
    show.legend = FALSE,
    width = 1
  ) +
  theme(aspect.ratio = 1)

bar + coord_flip()
bar + coord_polar()


  
  
  
  
  
  
  
  
  
  
  
  
  
)

































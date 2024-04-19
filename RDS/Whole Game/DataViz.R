library(tidyverse)
library(ggthemes)
library(palmerpenguins)

View(penguins)

ggplot(data = penguins, 
       mapping = aes(flipper_length_mm, y = body_mass_g))+
  
  geom_point(mapping = aes(color = species, shape = species))+
  geom_smooth(method = lm, color = "black", se = FALSE)+
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper Length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()
#125 Exercises      
       
       

























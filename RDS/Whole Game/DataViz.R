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
#1.4

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mess_g)
)+
  geom_point()

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point()

ggplot(penguins, aes(x = species))+
  geom_bar()

#fct_infreq() sorts the bars by frequency
ggplot(penguins, aes(x = fct_infreq(species)))+
  geom_bar()

ggplot(penguins, aes(x = body_mass_g))+
  geom_histogram(binwidth = 200 )

ggplot(penguins, aes(x = body_mass_g))+
  geom_density()
# Section 1.5

ggplot(penguins, aes(x = species, y = body_mass_g))+
  geom_boxplot()

ggplot(penguins, aes(x = body_mass_g, color = species))+
  geom_density(linewidth = .75)

ggplot(penguins, aes(x = body_mass_g, color = species, fill = species))+
  geom_density(alpha = 0.5)

ggplot(penguins, aes(x = island, fill = species))+
  geom_bar()

ggplot(penguins, aes(x = island, fill = species))+
  geom_bar(position = "fill")

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point()

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species, shape = island))

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species, shape = species))+
  facet_wrap(~island)

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point()
ggsave(filename = "penguin-plot.png")
















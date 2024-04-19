library(tidyverse)

data()
?BOD


ggplot(data = BOD, mapping = aes(x = Time, y = demand))+
  geom_point(size = 5)+ 
  geom_line(color = "red")

ggplot(BOD, aes(Time, demand)) +
  geom_point(size = 3)+
  geom_line(color = "blue")

CO2

CO2 %>%
  ggplot(aes(conc,uptake,
             color = Treatment))+
  geom_point(size = 3, alpha = .5)+
  geom_smooth(method = lm, se = F)+
  facet_wrap(~Type)+
  labs(title = "Concetration of CO2")+
  theme_bw()

CO2 %>%
  ggplot(aes(Treatment,uptake))+
  geom_boxplot()+
  geom_point(alpha = .5,
    aes(size = conc,
                 color = Plant))+
  coord_flip()+
  theme_classic()+
  facet_wrap(~Type)+
  labs(title = "Chill vs Non-Chilled")


#shows dataframe
view(mpg)

mpg %>%
  filter(cty > 25)%>%
  ggplot(aes(displ,cty))+
  geom_point(aes(color = drv,
                 size = trans),
             alpha = .5)+
  geom_smooth(method = lm)+
  facet_wrap(~year,nrow = 1)








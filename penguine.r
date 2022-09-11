library(penguins)
library()
view(penguins)
data(penguins)

penguins %>%
  drop_na() %>%
  group_by(species) %>%
  summarize(max(flipper_length_mm))


penguins %>%
  group_by(island) %>%
  summarise(mean(bill_length_mm), sd(bill_length_mm), mean(flipper_length_mm), max(flipper_length_mm))

ggplot(data = penguins)+
  geom_point( mapping = aes( x = flipper_length_mm , y = body_mass_g , color = species , shape = island))

ggplot(data = penguins)+
  geom_point( mapping = aes( x = flipper_length_mm , y = body_mass_g , alpha = species), color = "purple")

ggplot(data = penguins)+
  #geom_smooth( mapping = aes( x = flipper_length_mm , y = body_mass_g, linetype = species ))+
  geom_jitter( mapping = aes( x = flipper_length_mm, y = body_mass_g)) #avoiding overlapping and densy datapoint

#Diamonds packages comes with ggplot packages
view(diamonds)

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = clarity))






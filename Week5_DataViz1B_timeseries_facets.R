library(tidyverse)

surveys_complete <- read_csv("data/portal_data_joined.csv") %>% 
  filter(complete.cases(.))



yearly_counts <- surveys_complete %>%
  count(year, species_id) 


ggplot(data = yearly_counts, mapping = aes(x = year, y = n)) +
  geom_line()


ggplot(data = yearly_counts, mapping = aes(x = year, y = n, group = species_id)) +
  geom_line()



ggplot(data = yearly_counts, mapping = aes(x = year, y = n, color = species_id)) +
  geom_line()



ggplot(data = yearly_counts, mapping = aes(x = year, y = n)) +
  geom_line() +
  facet_wrap(~ species_id)



mystery <- read_csv("https://raw.githubusercontent.com/gge-ucd/R-DAVIS/master/data/mysteryData.csv")

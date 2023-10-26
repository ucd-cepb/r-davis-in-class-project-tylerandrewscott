library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")

summary(surveys$hindfoot_length)

ifelse(test or condition, waht to do if yes/true, what to do if no/false)
surveys$hindfoot_length < 29.29
surveys$hindfoot_cat <- ifelse(test = surveys$hindfoot_length < 29.29,yes = "small",no = "big")

head(surveys$hindfoot_cat)
head(surveys$hindfoot_length)

surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 29.29 ~ "big",
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) %>% 
  head()

NA_character_
NA_integer_

surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 29.29 ~ "big",
    is.na(hindfoot_length) ~ NA_character_,
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) %>% 
  head()



temp <- surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 31.5 ~ "big",
    hindfoot_length > 29 ~ 'medium',
    is.na(hindfoot_length) ~ NA_character_,
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) 

table(temp$hindfoot_cat)


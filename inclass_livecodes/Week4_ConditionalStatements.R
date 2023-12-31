library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")

summary(surveys$hindfoot_length)

ifelse(test or condition that must be met, what to do if test is met, what to do if test is not met)


ifelse(test = surveys$hindfoot_length < 29.29,yes = "small",no = "big")

test <- F

if(test==TRUE){print('this is true')}else{'this is false!'}


surveys$hindfoot_cat <- ifelse(test = surveys$hindfoot_length < 29.29,
                               yes = "small",no = "big")

head(surveys$hindfoot_cat,100)
head(surveys$hindfoot_length)

ifelse(surveys$hindfoot_length<20,yes = 'small',
       ifelse(surveys$hindfoot_length<30,yes = 'medium',no = 'big'))


surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 29.29 ~ "big",
    TRUE ~ "small"
  )) %>% 
  select(hindfoot_length, hindfoot_cat) %>% 
  head()

NA_character_
NA_integer_
NA_character_


surveys %>% 
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 29.29 ~ "big",
    hindfoot_length > 20 ~ 'medium',
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


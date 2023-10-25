#Homework this week will be playing with the surveys data we worked on in class. First things first, open your r-davis-in-class-project and pull. Then create a new script in your scripts folder called week_3_homework.R.

#Load your survey data frame with the read.csv() function. 

#Create a new data frame called surveys_base 
surveys_base <- read.csv('data/portal_data_joined.csv')

#with only the species_id, the weight, and the plot_type columns

surveys_base <- surveys_base[1:5e3,c('species_id','weight','plot_type')]
library(tidyverse)
select(surveys_base,species_id)

#Have this data frame only be the first 5,000 rows. 



#Convert both species_id and plot_type to factors. 

?as.factor
?factor
test1 <- factor(surveys_base$species_id)
test2 <- as.factor(surveys_base$species_id)
identical(test1,test2)

#Remove all rows where there is an NA in the weight column. 
is.na(surveys_base$weight)
surveys_base[is.na(surveys_base$weight),]


#Explore these variables and try to explain 
#why a factor is different from a character. 
#Why might we want to use factors? Can you think of any examples?
  

#CHALLENGE: Create a second data frame called challenge_base that 
#only consists of individuals from your surveys_base data frame 
#with weights greater than 150g.


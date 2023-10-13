## Indexing and subsetting data frames

## Indexing and subsetting data frames
surveys <- read.csv('data/portal_data_joined.csv')

# first element in the first column of the data frame (as a vector)
surveys[1, 1]   

# first element in the 6th column (as a vector)
surveys[1, 6]   
head(surveys,1)

# first column of the data frame (as a vector)
surveys[,1]    
# first column of the data frame (as a data.frame)
surveys[,1] 
surveys[,10]

# first three elements in the 7th column (as a vector)
surveys[1:3, 7] 
# the 3rd row of the data frame (as a data.frame)
surveys[3, ]    
# equivalent to head_surveys <- head(surveys)
head_surveys <- surveys[1:6, ] 


surveys[, -1]          # The whole data frame, except the first column
colnames(surveys)

surveys[,4]
surveys$year
surveys[c('year','species_id')]
surveys[['year']]
identical(surveys$year,surveys[['year']])
identical(surveys$year,surveys['year'])
all(surveys$year == surveys['year'])
surveys[c("species_id","plot_type")]       # Result is a data.frame
surveys[, "species_id"]     # Result is a vector
surveys[[c("species_id","plot_type"]]     # Result is a vector
surveys$species_id          # Result is a vector

surveys$species_id




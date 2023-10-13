
  surveys <- read.csv("data/portal_data_joined.csv")

  surveys
  class(surveys)

## Inspecting `data.frame` Objects

#When working with a large data frame, it's usually impractical to try to look at it all at once, so we'll need to arm ourselves with a series of tools for inspecting them. Here is a non-exhaustive list of some common functions to do this:

nrow(surveys)
ncol(surveys)
dim(surveys)

head(surveys)
surveys[1:6,]
tail(surveys)

View(surveys)

head(surveys)
colnames(surveys)
rownames(surveys)

str(surveys)

summary(surveys)

#Note: most of these functions are "generic", they can be used on other types of
#objects besides `data.frame`.

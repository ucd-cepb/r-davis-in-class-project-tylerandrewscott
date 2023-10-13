
heights <- c(2, 4, 4, NA, 6)
mean(heights)
max(heights)

mean(heights, na.rm = T)
max(heights, na.rm = F)

## Extract those elements which are not missing values.

is.na(heights) # this returns a logical vector with TRUE where there is an NA


!is.na(heights) # the ! means "is not", so now we get a logical vector with FALSE for NAs

heights[is.na(heights)]

heights[!is.na(heights)] # now we put that logical vector in, and it will NOT return the entries with NA

## Extract those elements which are complete cases. The returned object is an atomic vector of type `"numeric"` (or `"double"`).



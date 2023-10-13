c(2, 4, 4, NA, 6)
heights <- c(2, 4, 4, NA, 6)

mean(heights)
mean(heights,na.rm = T)
max(heights)
heights <- c(2, 4, 4, NA, 6)
mean(heights, na.rm = T)
max(heights, na.rm = F)
mean, max, median, mode

## Extract those elements which are not missing values.

is.na(heights) # this returns a logical vector with TRUE where there is an NA
heights
!FALSE
is.na(heights)
!is.na(heights) # the ! means "is not", so now we get a logical vector with FALSE for NAs

heights[is.na(heights)]

heights[!is.na(heights)] # now we put that logical vector in, and it will NOT return the entries with NA
!is.na(heights)
heights[!is.na(heights)]
## Extract those elements which are complete cases. The returned object is an atomic vector of type `"numeric"` (or `"double"`).

cbind(heights,c(!is.na(heights)))
heights[!is.na(heights)]

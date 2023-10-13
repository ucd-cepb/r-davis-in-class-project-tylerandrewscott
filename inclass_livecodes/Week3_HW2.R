set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2[c(4,12,22,27)]<- NA
hw2

is.na(hw2)
!is.na(hw2)
hw2 <- hw2[!is.na(hw2)]
#select #s between 14 and 38
# bigger than or equal to 14
hw2 >= 14
# less than or equal to 38
hw2 <= 38

hw2 >= 14 & hw2 <= 38
hw2 <- hw2[hw2 >= 14 & hw2 <= 38]

(hw2 + 10) * 3

hw2_times3 <- hw2 * 3
hw2_times3 + 10

hw2[c(T,F)]



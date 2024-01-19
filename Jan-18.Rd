# Author: Pawar, Date: 01/18/2024, Purpose: Basics of R Programming

# Calculate average/mean of 6 numbers
# SetA = {1,2,3,4,5,6}
# Average = (1+2+3+4+5+6)/6
x <- c(1,2,3,10,20,30)
mean(x)
sd(x)

# name() is a function
y <- c(1,2,3,6,7,1,2,1)

marks1 <- c(56, 88, 75, 87, 73, 69, 47, 59, 61, 92, 88)
mode = function() {return(names(sort(-table(marks1)))[1])}
mode()

# I want to calculate mean of 5000000, 6, 100
# arnav <- c()
# Riya <- c()

# Data to caulate means on
https://gist.github.com/seankross/a412dfbd88b3db70b74b

# Read about correlation test?






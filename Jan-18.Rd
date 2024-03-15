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

#Magnitude (-1 0 +1) and Direction (+/Direct or -/Inverse)

# Read the file mtcars.csv in R
# Setting the working directory
# Terminal: ls, cd Desktop, ls, pwd
setwd("/Users/pawar/Desktop")

# Read the mtcars.csv file in R
data <- read.csv("mtcars.csv", header=TRUE)

# Apply correlation test
result <- cor.test(data$mpg, data$wt)

# In class assignment:
# Want you to generate 3 correlation values: 
# mpg vs hp; mpg vs drat; mpg vs qsec
# Copy the three outputs, paste in your R document, save and upload file on your Git repo.

# What is export in R, and how to export data in CSV file
write.csv(data, "export.csv")
write.table(data, "export.txt")

# Visualization in R
Barplots, scatterplots, volcano plots, Venn diagrams,
Pie charts, Density plots, Line plots.......

Basic plot type is Bar plot?
barplot(data$cyl, data$gear, xlab="cylinders", ylab="gears", main="Number of gears per cylinder", cex.lab=5)

# Density plots in R?
den <- density(data$mpg)
plot(den, col = "blue")
lines(density(data$hp),lwd = 2,col = "red")

# Histogram plot in R?
hist(data$mpg)
lines(density(data$qsec),lwd = 2,col = "red")

# Scatter plot in R?
plot(data$wt, data$mpg, main="Scatterplot Example", xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)

# Adding a best fit line
data <- data.frame("y"=mtcars$mpg,"x"=mtcars$wt)
fit <-  lm(data$y ~  data$x)
fit_inverse <-  lm(data$y ~  I(1/data$x))
plot(data$x,data$y,col = "blue",bty="l",pch=20,ylab = "",xlab="")
lines(data$x,fitted(fit) ,type="l",lty = 29,col="blue") 

# T-test
# Used to test the differences between "2 groups", P value < 0.05.

output <- t.test(data$mpg, data$disp)

# ANOVA test=Analysis of variance
# Used to test the diferences between "more than 2 groups"

# Hypothesis, and its types (Null & Alternate)

# Riya: Ovarian cancer microarray dataset, ~800-1000 samples. Normal ovarian tissue dataset (50-100)??
# Arnav: Liver cancer microarray dataset, 500 samples. Normal liver tissue dataset (50-100)??



















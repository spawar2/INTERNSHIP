#Author: Pawar, Date: 08/08/2023, Purpose: R practice

# calculate sum of 2 numbers: 10, 15 
# calculate division of 2 numbers: 1000, 10
# calculate subtraction of 2 numbers: 700000000, 7
# calculate multiplication of 2 numbers: 191919, 8

# Read the Affymetrix data in R
library(affy)

# Set the working directory
setwd("/Users/pawar/Desktop/Teaching Spring 2022/Summer-2023/GRC internship program/GRC-Consulting/GSE344_RAW")

# Read the data itself
data <- ReadAffy()

# Visualize read dataset
boxplot(data)









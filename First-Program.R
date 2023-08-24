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

# Pre-processing dataset: Normalization of data using RMA
data_normalized <- rma(data)

# Creating a table with samples and expression values
expression_values <- exprs(data_normalized)

# Create a box plot to check normalized expression values
boxplot(expression_values)

# Analysis for gene expression changes

# Separate treatment and control chips

Logarithm? Log2, Log10

1000 ---> 10

Treatment <- apply(expression_values[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)

Control <- apply(expression_values[,c("GSM4845.CEL", "GSM4846.CEL")], 1, log)

# Get back the previous data shape using fucntion transpose

Treatment <- t(Treatment)
Control <- t(Control)

# Average for treatment and control

Treatment_Mean <- rowMeans(Treatment)
Control_Mean <- rowMeans(Control)

# Comparing treatment and control samples to check the up-regulated and down-regulated genes, Fold change analysis

Fold_change <- Treatment_Mean-Control_Mean

# Up-regulated fold change > +1.5
# Down-regulated fold change <-1.5

















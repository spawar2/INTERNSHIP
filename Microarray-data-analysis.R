#Author: Pawar, Date: 04/11/2024, Purpose: Microarray analysis for Liver Cancer

# Set the working directory to your dataset folder
setwd("/Users/pawar/Desktop/GSE158408_RAW")

# Loading the package Affy
library(affy)

# Read the CEL files usin library affy
data <- ReadAffy()
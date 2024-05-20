# Load package oligo
library(oligo)

# List all CEL files in folder
celfiles <- list.files("/Users/pawar/Desktop/Breast_Cancer/GSE9899_RAW", full = TRUE)

# Read all CEL files in folder
rawData <- read.celfiles(celfiles)

normData <- rma(rawData)

# Extract the expression data from CEL files
Data <- exprs(normData)

# List all CEL files in folder
celfiles1 <- list.files("/Users/pawar/Desktop/Breast_Cancer/GSE14407_RAW", full = TRUE)

# Read all CEL files in folder
rawData1 <- read.celfiles(celfiles1)

normData1 <- rma(rawData1)

# Extract the expression data from CEL files
Data1 <- exprs(normData1)

# Average for treatment and control
Treatment_Mean <- rowMeans(Data)
Control_Mean <- rowMeans(Data1)

# Comparing treatment and control samples to check the up-regulated and down-regulated genes, Fold change analysis

Fold_change <- Treatment_Mean-Control_Mean

# Up-regulated fold change > +1.5
# Down-regulated fold change <-1.5

Fold_change <- log(Fold_change,2)

write.csv(Fold_change, "Fold_change.csv", row.names = TRUE)

#####################GSEA PLOT#############################

setwd("/Users/pawar/Desktop/")
df = read.csv("Cluster.csv", header=FALSE)

organism = "org.Hs.eg.db"
BiocManager::install(organism, character.only = TRUE)
library(organism, character.only = TRUE)
library(clusterProfiler)
library(enrichplot)
# we use ggplot2 to add x axis labels (ex: ridgeplot)
library(ggplot2)

# we want the log2 fold change 
original_gene_list <- df[,2]

# name the vector
names(original_gene_list) <- df[,1]

# omit any NA values 
gene_list<-na.omit(original_gene_list)

# sort the list in decreasing order (required for clusterProfiler)
gene_list = sort(gene_list, decreasing = TRUE)

gse <- gseGO(geneList=gene_list, 
             ont ="ALL", 
             keyType = "SYMBOL", 
             nPerm = 10000, 
             minGSSize = 3, 
             maxGSSize = 800, 
             pvalueCutoff = 0.009, 
             verbose = TRUE, 
             OrgDb = organism, 
             pAdjustMethod = "none")

require(DOSE)
dotplot(gse, showCategory=10, split=".sign") + facet_grid(.~.sign)

geneSetId
gseaplot(gse, by = "all", title = gse$Description[5], geneSetID = 1)

####################HEAT MAP ########################

write.csv(Data, "Treatment.csv", row.names = TRUE)
write.csv(Data1, "Control.csv", row.names = TRUE)

map = read.csv("Heatamp.csv", header=TRUE)

data <- as.matrix(map)
row.names(data) <- data[,1]
data = data[,-1]
class(data) <- "numeric"

heatmap(data)














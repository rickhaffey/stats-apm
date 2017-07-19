library(AppliedPredictiveModeling)
library(e1071)
library(caret)
library(corrplot)

data(segmentationOriginal)

# look at just training data
segData <- subset(segmentationOriginal, Case == "Train")

# extract some vectors from the main dataset
cellID <- segData$Cell
class <- segData$Class
case <- segData$Case

# remove those variables 
segData <- segData[, -(1:3)]

# remove the "status" columns
statusColNum <- grep("Status", names(segData))
segData <- segData[, -statusColNum]

correlations <- cor(segData)
dim(correlations)
correlations[1:4, 1:4]

highCorr <- findCorrelation(correlations, cutoff = 0.75, names=TRUE)
length(highCorr)
head(highCorr)
filteredSegData <- segData[, -highCorr]

# this is a script to export the data sets used in Applied Predictive Modeling, in a format that can 
# be used via Python

#install.packages("AppliedPredictiveModeling")
#install.packages("mlbench")

basePath = "../data/"

library(AppliedPredictiveModeling)

data(segmentationOriginal)
write.csv(segmentationOriginal, paste(basePath, 'segmentationOriginal.csv', sep=""), row.names = FALSE)

data(FuelEconomy)
write.csv(cars2010, paste(basePath, 'cars2010.csv', sep=""), row.names = FALSE)
write.csv(cars2011, paste(basePath, 'cars2011.csv', sep=""), row.names = FALSE)
write.csv(cars2012, paste(basePath, 'cars2012.csv', sep=""), row.names = FALSE)

library(caret)
data(cars)
cars$Type = factor(data.matrix(cars[14:18]) %*% 1:5, labels=colnames(cars)[14:18])
carSubset = cars[, c('Price', 'Mileage', 'Type')]
write.csv(carSubset, paste(basePath, 'carSubset.csv', sep=""), row.names = FALSE)

library(mlbench)
data(Glass)
write.csv(Glass, paste(basePath, 'Glass.csv', sep=""), row.names = FALSE)

library(mlbench)
data(Soybean)
write.csv(Soybean, paste(basePath, 'Soybean.csv', sep=""), row.names = FALSE)

library(caret)
data(BloodBrain)
write.csv(bbbDescr, paste(basePath, 'bbbDescr.csv', sep=""), row.names = FALSE)
write.csv(logBBB, paste(basePath, 'logBBB.csv', sep=""), row.names = FALSE)

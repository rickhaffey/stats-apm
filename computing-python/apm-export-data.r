# this is a script to export the data sets used in Applied Predictive Modeling, in a format that can 
# be used via Python

#install.packages("AppliedPredictiveModeling")

basePath = "../data/"

library(AppliedPredictiveModeling)

data(segmentationOriginal)
write.csv(segmentationOriginal, paste(basePath, 'segmentationOriginal.csv', sep=""), row.names = FALSE)

data(FuelEconomy)
write.csv(cars2010, paste(basePath, 'cars2010.csv', sep=""), row.names = FALSE)
write.csv(cars2011, paste(basePath, 'cars2011.csv', sep=""), row.names = FALSE)
write.csv(cars2012, paste(basePath, 'cars2012.csv', sep=""), row.names = FALSE)
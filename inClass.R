
getwd()
setwd("C:/Users/JeffM/Desktop/R_folder/In Class")

#reload the insurance data (new version of the file)

load("exampleData1.rData")



?merge
largeData <- merge(medianincome, custdata)

#income/medianIncome
largeData$norm.income <- largeData$Income/largeData$Median.Income

summary(largeData$norm.income)

#Normalization gives the ability to better see the data
#In comparison with the median


trainingset <- subset(largeData, largeData$gp <= 0.3)
testSet <- subset(largeData, largeData$gp > 0.3)


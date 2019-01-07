#author: sitimariyah##
#install the packages
install.packages("randomForest")
#load library
library(randomForest)
#library party for attribute importance & plot
library(party)

#partition data training & testing
dataIris = iris
Sample = sample(1:150, 50)
Testing = dataIris[Sample, ]
Learning = dataIris[-Sample, ]

#consr model and plot importance
RFtree = randomForest(Species~., data = Learning)
RFtree
importance(RFtree)
varImpPlot(RFtree)

#make prediction
prediction = predict(RFtree, Testing)
prediction

#confusion Matrix and accuracy
ConfusionMatrix = table(Testing[, 5], prediction)
Accuracy = sum(diag(ConfusionMatrix))/sum(ConfusionMatrix)
Accuracy

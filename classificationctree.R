##author:sitimariyah

#install library party
install.packages("party")
#load library
library(party)

#prepare training and testing dataset
datasetIris = iris
Sample = sample(1:150, 50)
Testing = datasetIris[Sample, ]
Learning = datasetIris[-Sample, ]

#membuat classifier
tree = ctree(Species~., data = Learning)

#plot tree
plot(tree)

#predict testing data
prediction = predict(tree, Testing)
prediction

#confusion matrix & accuracy of model
ConfusionMatrix = table(Testing[, 5], prediction)
Accuracy = sum(diag(ConfusionMatrix))/sum(ConfusionMatrix)
Accuracy
ConfusionMatrix

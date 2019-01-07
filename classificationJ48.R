#author: sitimariyah##
#install required packages
install.packages("RWeka")
install.packages("partykit")
#load library, partykit for plotting the tree
library(RWeka)
library(partykit)

#prepare sample and testing set
dataIris = iris
Sample = sample(1:150, 50)
Testing = dataIris[Sample, ]
Learning = dataIris[-Sample, ]

#construct the tree
tree = J48(Species~., data = Learning)

#plot the tree
plot(tree)

#predict testing data
prediction = predict(tree, Testing)
prediction

#confusion matriks dan akurasi
ConfusionMatrix = table(Testing[, 5], prediction)
Accuracy = sum(diag(ConfusionMatrix))/sum(ConfusionMatrix)
Accuracy

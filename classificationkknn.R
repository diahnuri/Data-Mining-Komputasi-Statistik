#author: sitimariyah##
#install the packages
install.packages("kknn")
#load library kknn
library(kknn)


#prepare sample and testing set
dataIris = iris
Sample = sample(1:150, 50)
Testing = dataIris[Sample, ]
Learning = dataIris[-Sample, ]

#construct the tree
model = train.kknn(Species ~., data = Learning, kmax = 9)
model

#plot the model
plot(model)

#predict testing data
prediction = predict(model, Testing)
prediction

#confusion matriks dan akurasi
ConfusionMatrix = table(Testing[, 5], prediction)
Accuracy = sum(diag(ConfusionMatrix))/sum(ConfusionMatrix)
Accuracy

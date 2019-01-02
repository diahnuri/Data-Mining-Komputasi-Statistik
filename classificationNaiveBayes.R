#load library e1071
library(e1071) 

#buat data training dan testing
training = read.csv("M:/Data Mining PPT/Excersize/weather.csv", header = TRUE, sep =",")
testing = read.csv("M:/Data Mining PPT/Excersize/weathertest.csv", header = TRUE, sep =",")
head(training, 2)
#buat model naivaBayes
model = naiveBayes(play~.,data=training)
print(model)

#lakukan prediksi pada testing
prediksi = predict(model, testing)
prediksi

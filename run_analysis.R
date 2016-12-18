setwd("D:\\Google Drive1\\ATI\\analytics-base-course-material\\HomeWork\\UCI HAR Dataset")

train <- read.table("train\\X_train.txt")
test <- read.table("test\\X_test.txt")

completeDataSet <- rbind(train, test)

output <- as.data.frame(matrix(ncol = 4))

colnames(output) <- c("MeanTrain", "MeanTest", "SDTrain", "SDTest")

output$MeanTrain <- mean(train[!is.na(train)])
output$MeanTest <- mean(test[!is.na(test)])
output$SDTrain <- sd(train[!is.na(train)])
output$SDTest <- sd(test[!is.na(test)])

write.table(output, row.names = FALSE, file = "output.txt")

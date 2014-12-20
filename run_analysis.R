## 1.Merges the training and the test sets to create one data set.

### read data in train folder
train_data <- read.table("./train/X_train.txt")
train_label <- read.table("./train/y_train.txt")
train_subject <- read.table("./train/subject_train.txt")

### read data in test folder
test_data <- read.table("./test/X_test.txt")
test_label <- read.table("./test/y_test.txt")
test_subject <- read.table("./test/subject_test.txt")

### merge both datasets
myData <- rbind(train_data, test_data)
mylabel <- rbind(train_label, test_label)
mysubject <- rbind(train_subject, test_subject)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

### read features and grep descriptions contain mean or std
features <- read.table("features.txt")
mean_std_indexes <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
myData <- myData[,mean_std_indexes]
names(myData) <- gsub("\\(\\)", "", features[mean_std_indexes, 2])

## 3.Uses descriptive activity names to name the activities in the data set

activity <- read.table("activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
mylabel[, 1] <- activity[mylabel[, 1], 2]
names(mylabel) <- "activity"

## 4.Appropriately labels the data set with descriptive variable names. 

names(mysubject) <- "subject"
cleaned <- cbind(mysubject, mylabel, myData)

## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

subjectLen <- length(unique(mysubject)[,1])
activityLen <- length(activity[,1])
column_Len = dim(cleaned)[2]
result = cleaned[1:(subjectLen*activityLen), ]

row <- 1
for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    result[row, 1] <- sort(unique(mysubject)[, 1])[i]
    result[row, 2] <- activity[j, 2]
    numCols <- dim(cleaned)[2]
    
    myresult <- cleaned[cleaned$subject==i & cleaned$activity==activity[j, 2], ]
    result[row, 3:numCols] <- colMeans(myresult[, 3:numCols])
    
    row <- row + 1
  }
}

write.table(result, "clean_data_with_means.txt", sep="\t")

##Course Project

###Project Scope

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following.

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Script run_analysis.R

    ####Read data in traing & test subfolder
      train_data <- read.table("./train/X_train.txt")
      train_label <- read.table("./train/y_train.txt")
      train_subject <- read.table("./train/subject_train.txt")
      
      test_data <- read.table("./test/X_test.txt")
      test_label <- read.table("./test/y_test.txt")
      test_subject <- read.table("./test/subject_test.txt")

    ####Merge the train & test datasets together
      myData <- rbind(train_data, test_data)
      mylabel <- rbind(train_label, test_label)
      mysubject <- rbind(train_subject, test_subject)

    ####Read features and grep descriptions contain mean or std
      features <- read.table("features.txt")
      ####Extracts only the measurements on the mean and standard deviation for each measurement. 
      mean_std_indexes <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
      myData <- myData[,mean_std_indexes]
      names(myData) <- gsub("\\(\\)", "", features[mean_std_indexes, 2])

    ####Name the activities in the data set by reading activity
      activity <- read.table("activity_labels.txt")
      activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
      mylabel[, 1] <- activity[mylabel[, 1], 2]
      names(mylabel) <- "activity"

    ####Labels the data set with descriptive variable names
      names(mysubject) <- "subject"
      cleaned <- cbind(mysubject, mylabel, myData)

    ####creates a second, independent tidy data set with the average of each variable for each activity and each subject.

      subjectLen <- length(unique(mysubject)[,1])
      activityLen <- length(activity[,1])
      column_Len = dim(cleaned)[2]
      result = cleaned[1:(subjectLen*activityLen), ]
      ####Loop thru each subject and activity to calculate mean
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
      ####write tody data to a tab deliminated txt file
      write.table(result, "clean_data_with_means.txt", sep="\t")

###Steps to reproduct results

  1. Set the working directory to the main folder where the souce file been unzipped.
  2. Put the run_analysis.R to the working directory
  3. In RStudio, execute the r program by typing : source("run_analysis.R")

###Script output
  1. tidy clean data (tab delimited output)
  2. 2nd tidy data with the average of each variable for each activity and each subject

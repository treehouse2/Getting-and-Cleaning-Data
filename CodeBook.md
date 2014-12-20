#Codebook
### 1. Introduction
  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
###2. Study Design
  The data for the project is collected from the accelerometers from the Samsung Galaxy S smartphone.  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. More detail can be obtained at the study web site.
Here are the data for the project: 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The data cleaning process are performed based on the following steps:
  1.	Once the data is downloaded to your machine, please set the directory as the working directory.
  2.	Read data files and merge into 3 data sets (each has 10299 observtions)
      a.	myData
      b.	myLabel
      c.	mySubject
  3.	Extract mean and std variables – by grep subset of measures with label contains “mean” or “std”.
  4.	Give the data set with descriptive heading by assign the subject, activity and the features to the data set and remove the _, 
  5.	Sort through the subject and avtivity and calculate the average by taking the colmean for each measure.

###3. Code Book

#### 3.1 Result variables – 2 key factors (Subject, Activity) and 66 Measurment Variables
  
<table><tr><td>Subject</td><td>Identifier for the 30 volunteers – range from 1 to 30</td></tr>
<tr><td>Activity</td><td>Activity the subject performed - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</td></tr>
</table>
  tBodyAcc-mean-X	: body acceleration signals mean value along X axis
  
  tBodyAcc-mean-Y	: body acceleration signals mean value along Y axis
  
  tBodyAcc-mean-Z	: body acceleration signals mean value along Z axis
  
  tBodyAcc-std-X	: body acceleration signals std deviation along X axis
  tBodyAcc-std-Y	: body acceleration signals std deviation along Y axis
  tBodyAcc-std-Z	: body acceleration signals std deviation along Z axis
  tGravityAcc-mean-X	: gravity acceleration signals mean value along X axis
  tGravityAcc-mean-Y	: gravity acceleration signals mean value along Y axis
  tGravityAcc-mean-Z	: gravity acceleration signals mean value along Z axis
  tGravityAcc-std-X	: gravity acceleration signals std deviation along X axis
  tGravityAcc-std-Y	: gravity acceleration signals std deviation along Y axis
  tGravityAcc-std-Z	: gravity acceleration signals std deviation along Z axis
  tBodyAccJerk-mean-X	: body acceleration with jerk Signal mean value along X axis
  tBodyAccJerk-mean-Y	: body acceleration with jerk Signal mean value along Y axis
  tBodyAccJerk-mean-Z	: body acceleration with jerk Signal mean value along Z axis
  tBodyAccJerk-std-X	: body acceleration with jerk Signal std deviation along X axis
  tBodyAccJerk-std-Y	: body acceleration with jerk Signal std deviation along Y axis
  tBodyAccJerk-std-Z	: body acceleration with jerk Signal std deviation along Z axis
  tBodyGyro-mean-X	: body gyroscope signals mean value along X axis
  tBodyGyro-mean-Y	: body gyroscope signals mean value along Y axis
  tBodyGyro-mean-Z	: body gyroscope signals mean value along Z axis
  tBodyGyro-std-X	: body gyroscope signals std deviation along X axis
  tBodyGyro-std-Y	: body gyroscope signals std deviation along Y axis
  tBodyGyro-std-Z	: body gyroscope signals std deviation along Z axis
  tBodyGyroJerk-mean-X	: body gyroscope with jerk Signal mean value along X axis
  tBodyGyroJerk-mean-Y	: body gyroscope with jerk Signal mean value along Y axis
  tBodyGyroJerk-mean-Z	: body gyroscope s with jerk Signal mean value along Z axis
  tBodyGyroJerk-std-X	: body gyroscope with jerk Signal std deviation along X axis
  tBodyGyroJerk-std-Y	: body gyroscope with jerk Signal std deviation along Y axis
  tBodyGyroJerk-std-Z	: body gyroscope with jerk Signal std deviation along Z axis
  tBodyAccMag-mean	: Euclidean norm of body acceleration signals mean value
  tBodyAccMag-std	: Euclidean norm of body acceleration signals std deviation
  tGravityAccMag-mean	: Euclidean norm of gravity acceleration signals mean value
  tGravityAccMag-std	: Euclidean norm of gravity acceleration signals std deviation
  tBodyAccJerkMag-mean	: Euclidean norm of body acceleration with Jerk signals mean value
  tBodyAccJerkMag-std	: Euclidean norm of body acceleration with Jerk signals std deviation
  tBodyGyroMag-mean	: Euclidean norm of body gyroscope signals mean value
  tBodyGyroMag-std	: Euclidean norm of body gyroscope signals std deviation
  tBodyGyroJerkMag-mean	: Euclidean norm of body gyroscope with Jerk signals mean value
  tBodyGyroJerkMag-std	: Euclidean norm of body gyroscope with Jerk signals std deviation
  fBodyAcc-mean-X	: Fast Fourier Transform of body acceleration signals mean value along X axis
  fBodyAcc-mean-Y	: Fast Fourier Transform of body acceleration signals mean value along Y axis
  fBodyAcc-mean-Z	: Fast Fourier Transform of body acceleration signals mean value along Z axis
  fBodyAcc-std-X	: Fast Fourier Transform of body acceleration signals std deviation along X axis
  fBodyAcc-std-Y	: Fast Fourier Transform of body acceleration signals std deviation along Y axis
  fBodyAcc-std-Z	: Fast Fourier Transform of body acceleration signals std deviation along Z axis
  fBodyAccJerk-mean-X	: Fast Fourier Transform of body acceleration with jerk Signal mean value along X axis
  fBodyAccJerk-mean-Y	: Fast Fourier Transform of body acceleration with jerk Signal mean value along Y axis
  fBodyAccJerk-mean-Z	: Fast Fourier Transform of body acceleration with jerk Signal mean value along Z axis
  fBodyAccJerk-std-X	: Fast Fourier Transform of body acceleration with jerk Signal std deviation along X axis
  fBodyAccJerk-std-Y	: Fast Fourier Transform of body acceleration with jerk Signal std deviation along Y axis
  fBodyAccJerk-std-Z	: Fast Fourier Transform of body acceleration with jerk Signal std deviation along Z axis
  fBodyGyro-mean-X	: Fast Fourier Transform of body gyroscope signals mean value along X axis
  fBodyGyro-mean-Y	: Fast Fourier Transform of body gyroscope signals mean value along Y axis
  fBodyGyro-mean-Z	: Fast Fourier Transform of body gyroscope signals mean value along Z axis
  fBodyGyro-std-X	: Fast Fourier Transform of body gyroscope signals std deviation along X axis
  fBodyGyro-std-Y	: Fast Fourier Transform of body gyroscope signals std deviation along Y axis
  fBodyGyro-std-Z	: Fast Fourier Transform of body gyroscope signals std deviation along Z axis
  fBodyAccMag-mean	: Fast Fourier Transform of body acceleration signals mean value’s Euclidean norm
  fBodyAccMag-std	: Fast Fourier Transform of body acceleration signals std deviation’s Euclidean norm
  fBodyBodyAccJerkMag-mean :	Fast Fourier Transform of body acceleration with Jerk signals mean value’s Euclidean norm
  fBodyBodyAccJerkMag-std	: Fast Fourier Transform of body acceleration with Jerk signals std deviation’s Euclidean norm
  fBodyBodyGyroMag-mean	: Fast Fourier Transform of body gyroscope signals mean value’s Euclidean norm
  fBodyBodyGyroMag-std	: Fast Fourier Transform of body gyroscope signals std deviation’s Euclidean norm
  fBodyBodyGyroJerkMag-mean	: Fast Fourier Transform of body gyroscope with Jerk signals mean value’s Euclidean norm
  fBodyBodyGyroJerkMag-std	: Fast Fourier Transform of body gyroscope with Jerk signals std deviation’s Euclidean norm

###4. Tidy data output
The output is stored in a text file - clean_data_with_means.txt.  It contains the mean value of each variables list above group by subject and activity

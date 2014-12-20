#Codebook
### 1. Introduction
  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
###2. Study Design
  The data for the project is collected from the accelerometers from the Samsung Galaxy S smartphone.  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. More detail can be obtained at the study web site.
Here are the data for the project</td><td> 
  https</td><td>//d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The data cleaning process are performed based on the following steps</td><td>

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
  
<table>
<tr><td>Subject</td><td>Identifier for the 30 volunteers – range from 1 to 30</td></tr>
<tr><td>Activity</td><td>Activity the subject performed - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</td></tr>
<tr><td>tBodyAcc-mean-X</td><td>body acceleration signals mean value along X axis</td></tr>
<tr><td>tBodyAcc-mean-Y</td><td>body acceleration signals mean value along Y axis</td></tr>
<tr><td>tBodyAcc-mean-Z</td><td>body acceleration signals mean value along Z axis</td></tr>
<tr><td>tBodyAcc-std-X</td><td>body acceleration signals std deviation along X axis</td></tr>
<tr><td>tBodyAcc-std-Y</td><td>body acceleration signals std deviation along Y axis</td></tr>
<tr><td>tBodyAcc-std-Z</td><td>body acceleration signals std deviation along Z axis</td></tr>
<tr><td>tGravityAcc-mean-X</td><td>gravity acceleration signals mean value along X axis</td></tr>
<tr><td>tGravityAcc-mean-Y</td><td>gravity acceleration signals mean value along Y axis</td></tr>
<tr><td>tGravityAcc-mean-Z</td><td>gravity acceleration signals mean value along Z axis</td></tr>
<tr><td>tGravityAcc-std-X</td><td>gravity acceleration signals std deviation along X axis</td></tr>
<tr><td>tGravityAcc-std-Y	</td><td> gravity acceleration signals std deviation along Y axis</td></tr>
<tr><td>tGravityAcc-std-Z	</td><td> gravity acceleration signals std deviation along Z axis</td></tr>
<tr><td>tBodyAccJerk-mean-X	</td><td> body acceleration with jerk Signal mean value along X axis</td></tr>
<tr><td>tBodyAccJerk-mean-Y	</td><td> body acceleration with jerk Signal mean value along Y axis</td></tr>
<tr><td>tBodyAccJerk-mean-Z	</td><td> body acceleration with jerk Signal mean value along Z axis</td></tr>
<tr><td>tBodyAccJerk-std-X	</td><td> body acceleration with jerk Signal std deviation along X axis</td></tr>
<tr><td>tBodyAccJerk-std-Y	</td><td> body acceleration with jerk Signal std deviation along Y axis</td></tr>
<tr><td>tBodyAccJerk-std-Z	</td><td> body acceleration with jerk Signal std deviation along Z axis</td></tr>
<tr><td>tBodyGyro-mean-X	</td><td> body gyroscope signals mean value along X axis</td></tr>
<tr><td>tBodyGyro-mean-Y	</td><td> body gyroscope signals mean value along Y axis</td></tr>
<tr><td>tBodyGyro-mean-Z	</td><td> body gyroscope signals mean value along Z axis</td></tr>
<tr><td>tBodyGyro-std-X	</td><td> body gyroscope signals std deviation along X axis</td></tr>
<tr><td>tBodyGyro-std-Y	</td><td> body gyroscope signals std deviation along Y axis</td></tr>
<tr><td>tBodyGyro-std-Z	</td><td> body gyroscope signals std deviation along Z axis</td></tr>
<tr><td>tBodyGyroJerk-mean-X	</td><td> body gyroscope with jerk Signal mean value along X axis</td></tr>
<tr><td>tBodyGyroJerk-mean-Y	</td><td> body gyroscope with jerk Signal mean value along Y axis</td></tr>
<tr><td>tBodyGyroJerk-mean-Z	</td><td> body gyroscope s with jerk Signal mean value along Z axis</td></tr>
<tr><td>tBodyGyroJerk-std-X	</td><td> body gyroscope with jerk Signal std deviation along X axis</td></tr>
<tr><td>tBodyGyroJerk-std-Y	</td><td> body gyroscope with jerk Signal std deviation along Y axis</td></tr>
<tr><td>tBodyGyroJerk-std-Z	</td><td> body gyroscope with jerk Signal std deviation along Z axis</td></tr>
<tr><td>tBodyAccMag-mean	</td><td> Euclidean norm of body acceleration signals mean value</td></tr>
<tr><td>tGravityAccMag-mean	</td><td> Euclidean norm of gravity acceleration signals mean value</td></tr>
<tr><td>tGravityAccMag-std	</td><td> Euclidean norm of gravity acceleration signals std deviation</td></tr>
<tr><td>tBodyAccJerkMag-mean	</td><td> Euclidean norm of body acceleration with Jerk signals mean value</td></tr>
<tr><td>tBodyAccJerkMag-std	</td><td> Euclidean norm of body acceleration with Jerk signals std deviation</td></tr>
<tr><td>tBodyGyroMag-mean	</td><td> Euclidean norm of body gyroscope signals mean value</td></tr>
<tr><td>tBodyGyroMag-std	</td><td> Euclidean norm of body gyroscope signals std deviation</td></tr>
<tr><td>tBodyGyroJerkMag-mean	</td><td> Euclidean norm of body gyroscope with Jerk signals mean value</td></tr>
<tr><td>tBodyGyroJerkMag-std	</td><td> Euclidean norm of body gyroscope with Jerk signals std deviation</td></tr>
<tr><td>fBodyAcc-mean-X	</td><td> Fast Fourier Transform of body acceleration signals mean value along X axis</td></tr>
<tr><td>fBodyAcc-mean-Y	</td><td> Fast Fourier Transform of body acceleration signals mean value along Y axis</td></tr>
<tr><td>fBodyAcc-mean-Z	</td><td> Fast Fourier Transform of body acceleration signals mean value along Z axis</td></tr>
<tr><td>fBodyAcc-std-X	</td><td> Fast Fourier Transform of body acceleration signals std deviation along X axis</td></tr>
<tr><td>fBodyAcc-std-Y	</td><td> Fast Fourier Transform of body acceleration signals std deviation along Y axis</td></tr>
<tr><td>fBodyAcc-std-Z	</td><td> Fast Fourier Transform of body acceleration signals std deviation along Z axis</td></tr>
<tr><td>fBodyAccJerk-mean-X	</td><td> Fast Fourier Transform of body acceleration with jerk Signal mean value along X axis</td></tr>
<tr><td>fBodyAccJerk-mean-Y	</td><td> Fast Fourier Transform of body acceleration with jerk Signal mean value along Y axis</td></tr>
<tr><td>fBodyAccJerk-mean-Z	</td><td> Fast Fourier Transform of body acceleration with jerk Signal mean value along Z axis</td></tr>
<tr><td>fBodyAccJerk-std-X	</td><td> Fast Fourier Transform of body acceleration with jerk Signal std deviation along X axis</td></tr>
<tr><td>fBodyAccJerk-std-Y	</td><td> Fast Fourier Transform of body acceleration with jerk Signal std deviation along Y axis</td></tr>
<tr><td>fBodyAccJerk-std-Z	</td><td> Fast Fourier Transform of body acceleration with jerk Signal std deviation along Z axis</td></tr>
<tr><td>fBodyGyro-mean-X	</td><td> Fast Fourier Transform of body gyroscope signals mean value along X axis</td></tr>
<tr><td>fBodyGyro-mean-Y	</td><td> Fast Fourier Transform of body gyroscope signals mean value along Y axis</td></tr>
<tr><td>fBodyGyro-mean-Z	</td><td> Fast Fourier Transform of body gyroscope signals mean value along Z axis</td></tr>
<tr><td>fBodyGyro-std-X	</td><td> Fast Fourier Transform of body gyroscope signals std deviation along X axis</td></tr>
<tr><td>fBodyGyro-std-Y	</td><td> Fast Fourier Transform of body gyroscope signals std deviation along Y axis</td></tr>
<tr><td>fBodyGyro-std-Z	</td><td> Fast Fourier Transform of body gyroscope signals std deviation along Z axis</td></tr>
<tr><td>fBodyAccMag-mean	</td><td> Fast Fourier Transform of body acceleration signals mean value’s Euclidean norm</td></tr>
<tr><td>fBodyAccMag-std	</td><td> Fast Fourier Transform of body acceleration signals std deviation’s Euclidean norm</td></tr>
<tr><td>fBodyBodyAccJerkMag-mean </td><td>	Fast Fourier Transform of body acceleration with Jerk signals mean value’s Euclidean norm</td></tr>
<tr><td>fBodyBodyAccJerkMag-std	</td><td> Fast Fourier Transform of body acceleration with Jerk signals std deviation’s Euclidean norm</td></tr>
<tr><td>fBodyBodyGyroMag-mean	</td><td> Fast Fourier Transform of body gyroscope signals mean value’s Euclidean norm</td></tr>
<tr><td>fBodyBodyGyroMag-std	</td><td> Fast Fourier Transform of body gyroscope signals std deviation’s Euclidean norm</td></tr>
<tr><td>fBodyBodyGyroJerkMag-mean	</td><td> Fast Fourier Transform of body gyroscope with Jerk signals mean value’s Euclidean norm</td></tr>
<tr><td>fBodyBodyGyroJerkMag-std	</td><td> Fast Fourier Transform of body gyroscope with Jerk signals std deviation’s Euclidean norm</td></tr>
</table>

###4. Tidy data output
The output is stored in a text file - clean_data_with_means.txt.  It contains the mean value of each variables list above group by subject and activity

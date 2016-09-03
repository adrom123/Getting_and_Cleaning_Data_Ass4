## CODE BOOK 
The Code Book contains the following;
Information on Source Data 
Transformations to create the tidy dataset

### STUDY
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 
The data was taken from the UCI Machine Learning Repository. The data is See link below;
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## ABSTRACT
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## DATASET INFORMATION (Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## TRANSFORMATION STEPS
1) The source data was downloaded from the link supplied

2) The data was unzipped

3) The test and training datasets were loaded

4) The source variable names for the training and test datasets were loaded

5) The activity labels dataset was loaded

6) The training and test data were merged

7) Only the measurements on the mean and standard deviation for each measurement were extracted

8) Activity IDs were replaced with the activity labels for readability

9) The above datasets were merged to produce the first tidy dataset (TidyDataSetone.txt)

10) A second dataset was created; independent tidy data set with the 

average of each variable for each activity and each subject (TidyDataSet.txt)

The following script will implement the above steps;
run_analysis.R 


## Source Data Variables

subjectId: 1 to 30 each representing a participant in the study

activity: the activity that the subject was doing at the time of the measurement

tBodyAcc-mean-X

tBodyAcc-mean-Y

tBodyAcc-mean-Z

tBodyAcc-std-X

tBodyAcc-std-Y

tBodyAcc-std-Z

tGravityAcc-mean-X

tGravityAcc-mean-Y

tGravityAcc-mean-Z

tGravityAcc-std-X

tGravityAcc-std-Y

tGravityAcc-std-Z

tBodyAccJerk-mean-X

tBodyAccJerk-mean-Y

tBodyAccJerk-mean-Z

tBodyAccJerk-std-X


tBodyAccJerk-std-Y
tBodyAccJerk-std-Z

tBodyGyro-mean-X

tBodyGyro-mean-Y

tBodyGyro-mean-Z

tBodyGyro-std-X

tBodyGyro-std-Y

tBodyGyro-std-Z

tBodyGyroJerk-mean-X

tBodyGyroJerk-mean-Y

tBodyGyroJerk-mean-Z

tBodyGyroJerk-std-X

tBodyGyroJerk-std-Y

tBodyGyroJerk-std-Z

tBodyAccMag-mean

tBodyAccMag-std

tGravityAccMag-mean

tGravityAccMag-std

tBodyAccJerkMag-mean

tBodyAccJerkMag-std

tBodyGyroMag-mean

tBodyGyroMag-std

tBodyGyroJerkMag-mean

tBodyGyroJerkMag-std

fBodyAcc-mean-X

fBodyAcc-mean-Y

fBodyAcc-mean-Z

fBodyAcc-std-X

fBodyAcc-std-Y

fBodyAcc-std-Z

fBodyAccJerk-mean-X

fBodyAccJerk-mean-Y

fBodyAccJerk-mean-Z

fBodyAccJerk-std-X

fBodyAccJerk-std-Y

fBodyAccJerk-std-Z

fBodyGyro-mean-X

fBodyGyro-mean-Y

fBodyGyro-mean-Z

fBodyGyro-std-X

fBodyGyro-std-Y

fBodyGyro-std-Z

fBodyAccMag-mean

fBodyAccMag-std

fBodyBodyAccJerkMag-mean


fBodyBodyAccJerkMag-std

fBodyBodyGyroMag-mean

fBodyBodyGyroMag-std

fBodyBodyGyroJerkMag-mean

fBodyBodyGyroJerkMag-std

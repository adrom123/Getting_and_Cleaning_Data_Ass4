# Getting_and_Cleaning_Data_Assignment 4

## Purpose

TO prepare a tidy dataset than can be used for further analysis

## Deliverables
 1) a tidy data set as described in the assignment instructions (See link below)
 https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
 
 2) a link to a Github repository with your script for performing the analysis
 
 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
 

## TRANSFORMATION STEPS
 The run_analysis.R script will implement the following steps;
 
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



## Link to Raw Data 
 
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
## Link to Description of Data
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
## Instructions
 a) Load R or RStudio 
 
 b) Run run_script.R

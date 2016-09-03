
##Download the file and unzip the dataset

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")



# Unzip dataSet to directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

##~~~~~~~~~~~~ MERGE THE TRAINING AND TEST DATASETS~~~~~~~~~~~~~~~~~~~~~

# Read training data
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
    subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read test data
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
    subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read feature data
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Read activity labels
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')


## ~~~~~~~~~~~~~~~~~~~~~~~~~NAME COLUMNS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

colnames(x_train) <- features[,2] 
  colnames(y_train) <-"activityId"
    colnames(subject_train) <- "subjectId"

      colnames(x_test) <- features[,2] 
  colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

  colnames(activityLabels) <- c('activityId','activityType')

##~~~~~~~~~~~~~~~~~~ MERGE THE TRAINING AND TEST DATA~~~~~~~~~~~~~~~~~~~~~~~

train <- cbind(y_train, subject_train, x_train)
  test <- cbind(y_test, subject_test, x_test)
    alldata <- rbind(train, test)


##~~~~~~~~~ EXTRACT only the MEAN & STANDARD DEVIATION FOR MEASUREMENTS~~~~~~~

colNames <- colnames(alldata)

#CREATE VECTOR FOR ID | MEAN | STANDARD DEVIATION

mean_stdev <- (grepl("activityId" , colNames) | 
                   grepl("subjectId" , colNames) | 
                    grepl("mean.." , colNames) | 
                      grepl("std.." , colNames) 
)

# ~~~~~~~~~~~~~~SUBSET alldata using mean_stdev vector~~~~~~~~~~~~~~~~~~~~~~~

mean_stdev_subset <- alldata[ , mean_stdev == TRUE]


# USE DESCRIPTIVE ACTIVITY NAMES TO NAME ACTIVITIES IN THE DATASET

act_lab_mean_stdev_subset <- merge(mean_stdev_subset, activityLabels,
                                                 by='activityId',
                                                     all.x=TRUE)

write.table(act_lab_mean_stdev_subset, "TidyDataSetone.txt", row.name=FALSE)

##~~~~~~~~~~~~~~~~~CREATE TIDY DATASET with the ~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~AVERAGE OF EACH VARIABLE for each activity and subject~~~~~~

TidyDataSet <- aggregate(. ~subjectId + activityId, act_lab_mean_stdev_subset, mean)
TidyDataSet <- secTidySet[order(secTidySet$subjectId, secTidySet$activityId),]


#WRITE TIDY DATASET TO txt file, TidyDataSet.txt
write.table(TidyDataSet, "TidyDataSet.txt", row.name=FALSE)



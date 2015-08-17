##############################################################################################################################
#          Setup Instructions                                                                                                #
#       1. Set working directory.                                                                                            #
#       2. Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip         #
#       3. Extracted data to a folder called "data" in the working directory                                                 #
##############################################################################################################################

#Update as per your system
wd <- "/Users/robertgray/DataScience/GettingAndCleaningData"
setwd(wd)

## Requirement 1 - Merge the training and test sets to create one data set
##############################################################################################################################

# load the files
X_train <- read.table("data/train/X_train.txt",header=FALSE)
X_test <- read.table("data/test/X_test.txt",header=FALSE)
Y_train <- read.table("data/train/Y_train.txt",header=FALSE)
Y_test <- read.table("data/test/Y_test.txt",header=FALSE)
Subject_train <- read.table("data/train/subject_train.txt",header=FALSE)
Subject_test <- read.table("data/test/subject_test.txt",header=FALSE)
features <- read.table("data/features.txt")
activity_labels <- read.table("data/activity_labels.txt")

# merge the training and test sets
x <- rbind(X_train, X_test)
y <- rbind(Y_train, Y_test)
s <- rbind(Subject_train, Subject_test)

# update column names
colnames(x) <- features[,2]
colnames(y) <- "activity"
colnames(s) <- "subject.id"

# clean up old data
rm(X_train,X_test,Y_train,Y_test,Subject_train,Subject_test,features)

## Requirement 2 - Extract only the measurements on the mean and standard deviation for each measurement
##############################################################################################################################

x <- x[,grepl('mean\\(\\)|std\\(\\)',colnames(x))]

## Requirement 3 - Use descriptive activity names to name the activities in the data set
##############################################################################################################################

y[, 1] <- activity_labels[y[, 1], 2]

## Requirement 4 - Appropriately label the data set with descriptive variable names
##############################################################################################################################

#Reneame some of the variables
colnames(x)<-gsub("^tBody", "TimeBody", colnames(x))
colnames(x)<-gsub("^tGravity", "TimeGravity", colnames(x))
colnames(x)<-gsub("^fBody|^fBodyBody", "FrequencyBody", colnames(x))
colnames(x)<-gsub("Acc", "Acceleration", colnames(x))
colnames(x)<-gsub("Gyro", "Gyroscope", colnames(x))
colnames(x)<-gsub("Mag", "Magnitude", colnames(x))
colnames(x)<-gsub("-mean", "Mean", colnames(x))
colnames(x)<-gsub("-std", "Std", colnames(x))
colnames(x)<-gsub("-X", "X", colnames(x))
colnames(x)<-gsub("-Y", "Y", colnames(x))
colnames(x)<-gsub("-Z", "Z", colnames(x))
colnames(x)<-gsub("\\(\\)", "", colnames(x))

# put the tables together
tidy_data <- cbind(s, y, x)

## Requirement 5 - Create a second, independent tidy data set with the average of each variable
##                 for each activity and each subject
##############################################################################################################################

agg_tidy_data <-aggregate(tidy_data[,3:68], by=list(subject.id=tidy_data$subject.id,activity=tidy_data$activity), 
                          FUN=mean, na.rm=TRUE)

## We only need to write submit the tidy data set from step 5, but just un-comment if you want to output the full tidy data set
#write.table(tidy_data, "full_tidy_data.txt", row.name=FALSE)
write.table(agg_tidy_data, "tidy_data.txt", row.name=FALSE)

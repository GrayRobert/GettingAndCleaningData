## Codebook - Getting and Cleaning Data Course Project

>Version 1.0
>by Robert Gray

This is a tidy data set produced as part of the Getting and Cleaning Data Course on coursera. The original data was sourced from [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The original data set is based on experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. For more details see the original source data website.

###Transformations
1. Set working directory.                                                                                            
2. Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip         
3. Extracted data to a folder called "data" in the working directory   
4. Merged the training and test sets
5. Extracted only the measurements on the mean and standard deviation for each measurement
6. Updated the activty labels
7. Renamed some of the column names with more descriptive names
8. Then create a new data set grouped on activity and subject getting the average of each variable


###Variables

1.  subject.id - The unique identifier of the volunteer performing the activity (1 - 30)
2.  activity - The type of activity performed
    +   WALKING
    +   WALKING_UPSTAIRS
    +   WALKING_DOWNSTAIRS
    +   SITTING
    +   STANDING
    +   LAYING
3.  **XYZ** - denotes the 3-axial raw signals from the accelerometer and gyroscope
4.  **Time** - time domain signals 
5.  **Frequency** - frequency domain signals
6.  **Mean** - Mean Value
7.  **std** - Standard Deviation Value
8.  **Jerk** - Jerk Signals
9.  **Magnitude** - Magnitude
    +	timeBodyAcceleration-mean-X
    +	timeBodyAcceleration-mean-Y
    +	timeBodyAcceleration-mean-Z
    +	timeBodyAcceleration-std-X
    +	timeBodyAcceleration-std-Y
    +	timeBodyAcceleration-std-Z
    +	timeGravityAcceleration-mean-X
    +	timeGravityAcceleration-mean-Y
    +	timeGravityAcceleration-mean-Z
    +	timeGravityAcceleration-std-X
    +	timeGravityAcceleration-std-Y
    +	timeGravityAcceleration-std-Z
    +	timeBodyAccelerationJerk-mean-X
    +	timeBodyAccelerationJerk-mean-Y
    +	timeBodyAccelerationJerk-mean-Z
    +	timeBodyAccelerationJerk-std-X
    +	timeBodyAccelerationJerk-std-Y
    +	timeBodyAccelerationJerk-std-Z
    +	timeBodyGyroscope-mean-X
    +	timeBodyGyroscope-mean-Y
    +	timeBodyGyroscope-mean-Z
    +	timeBodyGyroscope-std-X
    +	timeBodyGyroscope-std-Y
    +	timeBodyGyroscope-std-Z
    +	timeBodyGyroscopeJerk-mean-X
    +	timeBodyGyroscopeJerk-mean-Y
    +	timeBodyGyroscopeJerk-mean-Z
    +	timeBodyGyroscopeJerk-std-X
    +	timeBodyGyroscopeJerk-std-Y
    +	timeBodyGyroscopeJerk-std-Z
    +	timeBodyAccelerationMagnitude-mean
    +	timeBodyAccelerationMagnitude-std
    +	timeGravityAccelerationMagnitude-mean
    +	timeGravityAccelerationMagnitude-std
    +	timeBodyAccelerationJerkMagnitude-mean
    +	timeBodyAccelerationJerkMagnitude-std
    +	timeBodyGyroscopeMagnitude-mean
    +	timeBodyGyroscopeMagnitude-std
    +	timeBodyGyroscopeJerkMagnitude-mean
    +	timeBodyGyroscopeJerkMagnitude-std
    +	frequencyBodyAcceleration-mean-X
    +	frequencyBodyAcceleration-mean-Y
    +	frequencyBodyAcceleration-mean-Z
    +	frequencyBodyAcceleration-std-X
    +	frequencyBodyAcceleration-std-Y
    +	frequencyBodyAcceleration-std-Z
    +	frequencyBodyAccelerationJerk-mean-X
    +	frequencyBodyAccelerationJerk-mean-Y
    +	frequencyBodyAccelerationJerk-mean-Z
    +	frequencyBodyAccelerationJerk-std-X
    +	frequencyBodyAccelerationJerk-std-Y
    +	frequencyBodyAccelerationJerk-std-Z
    +	frequencyBodyGyroscope-mean-X
    +	frequencyBodyGyroscope-mean-Y
    +	frequencyBodyGyroscope-mean-Z
    +	frequencyBodyGyroscope-std-X
    +	frequencyBodyGyroscope-std-Y
    +	frequencyBodyGyroscope-std-Z
    +	frequencyBodyAccelerationMagnitude-mean
    +	frequencyBodyAccelerationMagnitude-std
    +	frequencyBodyAccelerationJerkMagnitude-mean
    +	frequencyBodyAccelerationJerkMagnitude-std
    +	frequencyBodyGyroscopeMagnitude-mean
    +	frequencyBodyGyroscopeMagnitude-std
    +	frequencyBodyGyroscopeJerkMagnitude-mean
    +	frequencyBodyGyroscopeJerkMagnitude-std



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

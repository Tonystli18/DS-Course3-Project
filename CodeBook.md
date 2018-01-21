# Code Book
This file describes the variables, data and the process to tidy up the Human Activity Recognition Using Smartphones Dataset.
## The process to create tidy dataset
 * __Step 1__: Read training and test observation data and merge them together. **_X_all_** is the merged data.frame of all observations.
 * __Step 2__: Subtract observation data only for mean & standard devivation variables, and labels the data set with descriptive 
 variable names. **_x_data_** is the subset of X_all, but only have 79 mean and standard deviation variables.
 * __Step 3__: Get activity IDs for both training and test observations Then merge the data together and change the IDs to descriptive
 activity names. **_y_all_** stores the activity labels of 10,299 observations.
 * __Step 4__: Get subject data for both training and test observations Then merge them together. **_subject_all_** stores the subject IDs of 10,299 observations.
 * __Step 5__: Create the final dataset. **_all_data_** stores all 10,299 obs with 81 variables (activity, subject ID and 79 mean and std variables)
 * __Step 6__: Create tidy data set with the average of each variable for all subjects and activities, and store the tidy dataset to file. **_final_tidy_tbl_** stores the final tidy data.frame.
## Variables
There are totally 81 variables in the final tidy data set:
* subject
* activity
* tBodyAcc-mean-X
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tGravityAcc-mean-X
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z
* tBodyAccJerk-mean-X
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z
* tBodyGyro-mean-X
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z
* tBodyGyroJerk-mean-X
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyAccMag-mean
* tGravityAccMag-mean
* tBodyAccJerkMag-mean
* tBodyGyroMag-mean
* tBodyGyroJerkMag-mean
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z
* fBodyAcc-meanFreq-X
* fBodyAcc-meanFreq-Y
* fBodyAcc-meanFreq-Z
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y
* fBodyAccJerk-mean-Z
* fBodyAccJerk-meanFreq-X
* fBodyAccJerk-meanFreq-Y
* fBodyAccJerk-meanFreq-Z
* fBodyGyro-mean-X
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z
* fBodyGyro-meanFreq-X
* fBodyGyro-meanFreq-Y
* fBodyGyro-meanFreq-Z
* fBodyAccMag-mean
* fBodyAccMag-meanFreq
* fBodyAccJerkMag-mean
* fBodyAccJerkMag-meanFreq
* fBodyGyroMag-mean
* fBodyGyroMag-meanFreq
* fBodyGyroJerkMag-mean
* fBodyGyroJerkMag-meanFreq
* tBodyAcc-std-X
* tBodyAcc-std-Y
* tBodyAcc-std-Z
* tGravityAcc-std-X
* tGravityAcc-std-Y
* tGravityAcc-std-Z
* tBodyAccJerk-std-X
* tBodyAccJerk-std-Y
* tBodyAccJerk-std-Z
* tBodyGyro-std-X
* tBodyGyro-std-Y
* tBodyGyro-std-Z
* tBodyGyroJerk-std-X
* tBodyGyroJerk-std-Y
* tBodyGyroJerk-std-Z
* tBodyAccMag-std
* tGravityAccMag-std
* tBodyAccJerkMag-std
* tBodyGyroMag-std
* tBodyGyroJerkMag-std
* fBodyAcc-std-X
* fBodyAcc-std-Y
* fBodyAcc-std-Z
* fBodyAccJerk-std-X
* fBodyAccJerk-std-Y
* fBodyAccJerk-std-Z
* fBodyGyro-std-X
* fBodyGyro-std-Y
* fBodyGyro-std-Z
* fBodyAccMag-std
* fBodyAccJerkMag-std
* fBodyGyroMag-std
* fBodyGyroJerkMag-std

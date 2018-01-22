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
* subject : subject ID for the observation
* activity : what activity the subject conducted when get the observation
* tBodyAcc-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAcc-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAcc-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAcc-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAcc-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAcc-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerk-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerk-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerk-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyro-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyro-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyro-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerk-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerk-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerk-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAccMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerkMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerkMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-meanFreq-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-meanFreq-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-meanFreq-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-meanFreq-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-meanFreq-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-meanFreq-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-meanFreq-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-meanFreq-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-meanFreq-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccMag-meanFreq : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerkMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerkMag-meanFreq : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyroMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyroMag-meanFreq : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyroJerkMag-mean : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyroJerkMag-meanFreq : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAcc-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAcc-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAcc-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAcc-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAcc-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAcc-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerk-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerk-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerk-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyro-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyro-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyro-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerk-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerk-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerk-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tGravityAccMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyAccJerkMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* tBodyGyroJerkMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAcc-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerk-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-std-X : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-std-Y : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyro-std-Z : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyAccJerkMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyroMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity
* fBodyGyroJerkMag-std : mean value of rawdata feature 'tBodyAcc-mean()-X' of all obs for the corresponding subject & activity

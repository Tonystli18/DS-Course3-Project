# Code Book
This file describes the process of creating tidy dataset from the raw data of the Human Activity Recognition Using Smartphones Dataset. The data in final data set are mean values of the selected features, and the caculations are made on observations grouped by subjects and corresponding activities. The selected features are those features for mean and standard deviation in raw dataset.
## The process to create tidy dataset
 * __Step 1__: Read training and test observation data and merge them together. **_X_all_** is the merged data.frame of all observations.
 * __Step 2__: Subtract observation data only for mean & standard devivation variables, and labels the data set with descriptive 
 variable names, the variable names are also tidied up. **_x_data_** stores the result which has 79 variables about mean and standard deviation.
 * __Step 3__: Get activity IDs for both training and test observations Then merge the data together and change the IDs to descriptive
 activity names. **_y_all_** stores the activity labels of 10,299 observations.
 * __Step 4__: Get subject data for both training and test observations Then merge them together. **_subject_all_** stores the subject IDs of 10,299 observations.
 * __Step 5__: The Fifth, Create the final dataset for group operation and mean calculation in last step. **_all_data_** stores all 10,299 obs with 81 variables (activity, subject ID and 79 mean and std variables)
 * __Step 6__: Group _all_data_ set by subject & activity, and calculate the mean for all variables based on each group. The final tidy dataset **_final_tidy_tbl_** are stored into file _'tidy_data.txt'_.
## Variables
There are totally 81 variables in the final tidy data set. All of them have corresponding feature names in _'features.txt'_ of raw data. You can find the meaning of these variables in file _'features_info.txt'_. The 81 variable names are similar to corresponding raw data variables, but are changed by removing '()' or replaced 'BodyBody' by 'Body'. The definition of 81 variables are listed below:
* subject : The subject ID
* activity : The activity
* tBodyAcc-mean-X : mean value of rawdata feature 'tBodyAcc-mean()-X' for obs grouped by subject & activity
* tBodyAcc-mean-Y : mean value of rawdata feature 'tBodyAcc-mean()-Y' for obs grouped by subject & activity
* tBodyAcc-mean-Z : mean value of rawdata feature 'tBodyAcc-mean()-Z' for obs grouped by subject & activity
* tGravityAcc-mean-X : mean value of rawdata feature 'tGravityAcc-mean()-X' for obs grouped by subject & activity
* tGravityAcc-mean-Y : mean value of rawdata feature 'tGravityAcc-mean()-Y' for obs grouped by subject & activity
* tGravityAcc-mean-Z : mean value of rawdata feature 'tGravityAcc-mean()-Z' for obs grouped by subject & activity
* tBodyAccJerk-mean-X : mean value of rawdata feature 'tBodyAccJerk-mean()-X' for obs grouped by subject & activity
* tBodyAccJerk-mean-Y : mean value of rawdata feature 'tBodyAccJerk-mean()-Y' for obs grouped by subject & activity
* tBodyAccJerk-mean-Z : mean value of rawdata feature 'tBodyAccJerk-mean()-Z' for obs grouped by subject & activity
* tBodyGyro-mean-X : mean value of rawdata feature 'tBodyGyro-mean()-X' for obs grouped by subject & activity
* tBodyGyro-mean-Y : mean value of rawdata feature 'tBodyGyro-mean()-Y' for obs grouped by subject & activity
* tBodyGyro-mean-Z : mean value of rawdata feature 'tBodyGyro-mean()-Z' for obs grouped by subject & activity
* tBodyGyroJerk-mean-X : mean value of rawdata feature 'tBodyGyroJerk-mean()-X' for obs grouped by subject & activity
* tBodyGyroJerk-mean-Y : mean value of rawdata feature 'tBodyGyroJerk-mean()-Y' for obs grouped by subject & activity
* tBodyGyroJerk-mean-Z : mean value of rawdata feature 'tBodyGyroJerk-mean()-Z' for obs grouped by subject & activity
* tBodyAccMag-mean : mean value of rawdata feature 'tBodyAccMag-mean()' for obs grouped by subject & activity
* tGravityAccMag-mean : mean value of rawdata feature 'tGravityAccMag-mean()' for obs grouped by subject & activity
* tBodyAccJerkMag-mean : mean value of rawdata feature 'tBodyAccJerkMag-mean()' for obs grouped by subject & activity
* tBodyGyroMag-mean : mean value of rawdata feature 'tBodyGyroMag-mean()' for obs grouped by subject & activity
* tBodyGyroJerkMag-mean : mean value of rawdata feature 'tBodyGyroJerkMag-mean()' for obs grouped by subject & activity
* fBodyAcc-mean-X : mean value of rawdata feature 'fBodyAcc-mean()-X' for obs grouped by subject & activity
* fBodyAcc-mean-Y : mean value of rawdata feature 'fBodyAcc-mean()-Y' for obs grouped by subject & activity
* fBodyAcc-mean-Z : mean value of rawdata feature 'fBodyAcc-mean()-Z' for obs grouped by subject & activity
* fBodyAcc-meanFreq-X : mean value of rawdata feature 'fBodyAcc-meanFreq()-X' for obs grouped by subject & activity
* fBodyAcc-meanFreq-Y : mean value of rawdata feature 'fBodyAcc-meanFreq()-Y' for obs grouped by subject & activity
* fBodyAcc-meanFreq-Z : mean value of rawdata feature 'fBodyAcc-meanFreq()-Z' for obs grouped by subject & activity
* fBodyAccJerk-mean-X : mean value of rawdata feature 'fBodyAccJerk-mean()-X' for obs grouped by subject & activity
* fBodyAccJerk-mean-Y : mean value of rawdata feature 'fBodyAccJerk-mean()-Y' for obs grouped by subject & activity
* fBodyAccJerk-mean-Z : mean value of rawdata feature 'fBodyAccJerk-mean()-Z' for obs grouped by subject & activity
* fBodyAccJerk-meanFreq-X : mean value of rawdata feature 'fBodyAccJerk-meanFreq()-X' for obs grouped by subject & activity
* fBodyAccJerk-meanFreq-Y : mean value of rawdata feature 'fBodyAccJerk-meanFreq()-Y' for obs grouped by subject & activity
* fBodyAccJerk-meanFreq-Z : mean value of rawdata feature 'fBodyAccJerk-meanFreq()-Z' for obs grouped by subject & activity
* fBodyGyro-mean-X : mean value of rawdata feature 'fBodyGyro-mean()-X' for obs grouped by subject & activity
* fBodyGyro-mean-Y : mean value of rawdata feature 'fBodyGyro-mean()-Y' for obs grouped by subject & activity
* fBodyGyro-mean-Z : mean value of rawdata feature 'fBodyGyro-mean()-Z' for obs grouped by subject & activity
* fBodyGyro-meanFreq-X : mean value of rawdata feature 'fBodyGyro-meanFreq()-X' for obs grouped by subject & activity
* fBodyGyro-meanFreq-Y : mean value of rawdata feature 'fBodyGyro-meanFreq()-Y' for obs grouped by subject & activity
* fBodyGyro-meanFreq-Z : mean value of rawdata feature 'fBodyGyro-meanFreq()-Z' for obs grouped by subject & activity
* fBodyAccMag-mean : mean value of rawdata feature 'fBodyAccMag-mean()' for obs grouped by subject & activity
* fBodyAccMag-meanFreq : mean value of rawdata feature 'fBodyAccMag-meanFreq()' for obs grouped by subject & activity
* fBodyAccJerkMag-mean : mean value of rawdata feature 'fBodyBodyAccJerkMag-mean()' for obs grouped by subject & activity
* fBodyAccJerkMag-meanFreq : mean value of rawdata feature 'fBodyBodyAccJerkMag-meanFreq()' for obs grouped by subject & activity
* fBodyGyroMag-mean : mean value of rawdata feature 'fBodyBodyGyroMag-mean()' for obs grouped by subject & activity
* fBodyGyroMag-meanFreq : mean value of rawdata feature 'fBodyBodyGyroMag-meanFreq()' for obs grouped by subject & activity
* fBodyGyroJerkMag-mean : mean value of rawdata feature 'fBodyBodyGyroJerkMag-mean()' for obs grouped by subject & activity
* fBodyGyroJerkMag-meanFreq : mean value of rawdata feature 'fBodyBodyGyroJerkMag-meanFreq()' for obs grouped by subject & activity
* tBodyAcc-std-X : mean value of rawdata feature 'tBodyAcc-std()-X' for obs grouped by subject & activity
* tBodyAcc-std-Y : mean value of rawdata feature 'tBodyAcc-std()-Y' for obs grouped by subject & activity
* tBodyAcc-std-Z : mean value of rawdata feature 'tBodyAcc-std()-Z' for obs grouped by subject & activity
* tGravityAcc-std-X : mean value of rawdata feature 'tGravityAcc-std()-X' for obs grouped by subject & activity
* tGravityAcc-std-Y : mean value of rawdata feature 'tGravityAcc-std()-Y' for obs grouped by subject & activity
* tGravityAcc-std-Z : mean value of rawdata feature 'tGravityAcc-std()-Z' for obs grouped by subject & activity
* tBodyAccJerk-std-X : mean value of rawdata feature 'tBodyAccJerk-std()-X' for obs grouped by subject & activity
* tBodyAccJerk-std-Y : mean value of rawdata feature 'tBodyAccJerk-std()-Y' for obs grouped by subject & activity
* tBodyAccJerk-std-Z : mean value of rawdata feature 'tBodyAccJerk-std()-Z' for obs grouped by subject & activity
* tBodyGyro-std-X : mean value of rawdata feature 'tBodyGyro-std()-X' for obs grouped by subject & activity
* tBodyGyro-std-Y : mean value of rawdata feature 'tBodyGyro-std()-Y' for obs grouped by subject & activity
* tBodyGyro-std-Z : mean value of rawdata feature 'tBodyGyro-std()-Z' for obs grouped by subject & activity
* tBodyGyroJerk-std-X : mean value of rawdata feature 'tBodyGyroJerk-std()-X' for obs grouped by subject & activity
* tBodyGyroJerk-std-Y : mean value of rawdata feature 'tBodyGyroJerk-std()-Y' for obs grouped by subject & activity
* tBodyGyroJerk-std-Z : mean value of rawdata feature 'tBodyGyroJerk-std()-Z' for obs grouped by subject & activity
* tBodyAccMag-std : mean value of rawdata feature 'tBodyAccMag-std()' for obs grouped by subject & activity
* tGravityAccMag-std : mean value of rawdata feature 'tGravityAccMag-std()' for obs grouped by subject & activity
* tBodyAccJerkMag-std : mean value of rawdata feature 'tBodyAccJerkMag-std()' for obs grouped by subject & activity
* tBodyGyroMag-std : mean value of rawdata feature 'tBodyGyroMag-std()' for obs grouped by subject & activity
* tBodyGyroJerkMag-std : mean value of rawdata feature 'tBodyGyroJerkMag-std()' for obs grouped by subject & activity
* fBodyAcc-std-X : mean value of rawdata feature 'fBodyAcc-std()-X' for obs grouped by subject & activity
* fBodyAcc-std-Y : mean value of rawdata feature 'fBodyAcc-std()-Y' for obs grouped by subject & activity
* fBodyAcc-std-Z : mean value of rawdata feature 'fBodyAcc-std()-Z' for obs grouped by subject & activity
* fBodyAccJerk-std-X : mean value of rawdata feature 'fBodyAccJerk-std()-X' for obs grouped by subject & activity
* fBodyAccJerk-std-Y : mean value of rawdata feature 'fBodyAccJerk-std()-Y' for obs grouped by subject & activity
* fBodyAccJerk-std-Z : mean value of rawdata feature 'fBodyAccJerk-std()-Z' for obs grouped by subject & activity
* fBodyGyro-std-X : mean value of rawdata feature 'fBodyGyro-std()-X' for obs grouped by subject & activity
* fBodyGyro-std-Y : mean value of rawdata feature 'fBodyGyro-std()-Y' for obs grouped by subject & activity
* fBodyGyro-std-Z : mean value of rawdata feature 'fBodyGyro-std()-Z' for obs grouped by subject & activity
* fBodyAccMag-std : mean value of rawdata feature 'fBodyAccMag-std()' for obs grouped by subject & activity
* fBodyAccJerkMag-std : mean value of rawdata feature 'fBodyBodyAccJerkMag-std()' for obs grouped by subject & activity
* fBodyGyroMag-std : mean value of rawdata feature 'fBodyBodyGyroMag-std()' for obs grouped by subject & activity
* fBodyGyroJerkMag-std : mean value of rawdata feature 'fBodyBodyGyroJerkMag-std()' for obs grouped by subject & activity

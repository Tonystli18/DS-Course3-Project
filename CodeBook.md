# Code Book
This file describes the variables, data and the process to tidy up the Human Activity Recognition Using Smartphones Dataset.

## How to use the R script
 To use the R script, it is assumed that your working directory has a folder "UCI HAR Dataset/", which was created when you download
 this assignment data package and unzipped it. And the final tidy dataset is stored into "tidy_data.txt" under your working directory
 (assume it is the folder when you cloned this Github repos).
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

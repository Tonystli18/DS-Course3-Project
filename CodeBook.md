# Code Book
This file describes the variables, data and the process to tidy up the Human Activity Recognition Using Smartphones Dataset.
## The raw data files
I used 8 raw data files to create the tidy dataset:
 * _X_train.txt_ : 7352 obs(observations), 561 variables. Each row has 561 data which either collected by accelerometer & gyroscope,
 or calculated based on the collected data. And the data of each row comes from a specific subject(the volunteer) who took a 
 specific activity.
 * _X_test.txt_ : 2947 obs, 561 variables. Same data structure as X_train.txt.
 * _y_train.txt_ : 7352 obs, 1 variables. Each row specify the activity ID for the corrsponding obs in X_train.txt
 * _y_test.txt_ : 2947 obs, 1 variables. Each row specify the activity ID for the corresponding obs in X_test.txt
 * _activity_labels.txt_ : 6 rows, 2 variables. Activity label list. The 1st column data are activity IDs, the 2nd are activity
 descriptive names
 * _features.txt_ : 561 obs, 2 variables. 561 Variable names which are corresponding to the 561 variables in X_train.txt and X_test.txt.
 It also has the ID for each variables in column 1.
 * _subject_train.txt_ : 7352 obs, 1 variables. Each row indicates the subject ID for the corresponding row in X_train.txt.
 * _subject_test.txt_ : 2947 obs, 1 variables. Each row indicates the subject ID for the corresponding row in X_test.txt.
## How to use the R script
 To use the R script, it is assumed that your working directory has a folder "UCI HAR Dataset/", which was created when you download
 this assignment data package and unzipped it. And the final tidy dataset is stored into "tidy_data.txt" under your working directory
 (assume it is the folder when you cloned this Github repos).
## The process to create tidy dataset
 * __Step 1__: Read training and test observation data and merge them together. In this step, below variables are created and used:
   * __x_train_file__, __x_test_file__ : file paths of x_train.txt and x_test.txt
 * __Step 2__: Subtract observation data only for mean & standard devivation variables, and labels the data set with descriptive 
 variable names
 * __Step 3__: Get activity IDs for both training and test observations Then merge the data together and change the IDs to descriptive
 activity names
 * __Step 4__: Get subject data for both training and test observations Then merge them together
 * __Step 5__: Create the final dataset
 * __Step 6__: Create tidy data set with the average of each variable for all subjects and activities, and store the tidy dataset to file.

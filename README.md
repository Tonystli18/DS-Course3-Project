# The data files used for this project
This project works on 8 raw data files to create tidy data:
## - X_train.txt : 7352 obs(observations), 561 variables. Each row has 561 data which either collected 
##                 by accelerometer & gyroscope, or calculated based on the collected data. And the data
##                 of each row comes from a specific subject(the volunteer) who took a specific activity.
## - X_test.txt : 2947 obs, 561 variables. Same data structure as X_train.txt.
## - y_train.txt : 7352 obs, 1 variables. Each row specify the activity ID for the corrsponding obs in
##                 X_train.txt
## - y_test.txt : 2947 obs, 1 variables. Each row specify the activity ID for the corresponding obs in
##                X_test.txt
## - activity_labels.txt : 6 rows, 2 variables. Activity label list. The 1st column data are activity IDs,
##                         the 2nd are activity descriptive names
## - features.txt : 561 obs, 2 variables. 561 Variable names which are corresponding to the 561 variables
##                  in X_train.txt and X_test.txt. It also has the ID for each variables in column 1.
## - subject_train.txt : 7352 obs, 1 variables. Each row indicates the subject ID for the corresponding
##                       row in X_train.txt.
## - subject_test.txt : 2947 obs, 1 variables. Each row indicates the subject ID for the corresponding
##                       row in X_test.txt.
##
## To use this script, it is assumed that your working directory has a folder "UCI HAR Dataset/", which
## was created when you download this assignment data package and unzipped it. And the final tidy dataset
## is stored into "tidy_data.txt" under your working directory(assume the same folder when you cloned
## this Github repos).
Getting and Cleaning Data Course Project assignment

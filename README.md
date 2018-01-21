# The data files used for this project
8 raw data files are used to create the tidy dataset:
 * **_X_train.txt_** : **7352** obs(observations), **561** variables. Each row has 561 data which either collected by accelerometer & gyroscope,
 or calculated based on the collected data. And the data of each row comes from a specific subject(the volunteer) who took a 
 specific activity.
 * **_X_test.txt_** : **2947** obs, **561** variables. Same data structure as X_train.txt.
 * **_y_train.txt_** : **7352** obs, **1** variables. Each row specify the activity ID for the corrsponding obs in X_train.txt
 * **_y_test.txt_** : **2947** obs, **1** variables. Each row specify the activity ID for the corresponding obs in X_test.txt
 * **_activity_labels.txt_** : **6** rows, **2** variables. Activity label list. The 1st column data are activity IDs, the 2nd are activity
 descriptive names
 * **_features.txt_** : **561** obs, **2** variables. 561 Variable names which are corresponding to the 561 variables in X_train.txt and X_test.txt.
 It also has the ID for each variables in column 1.
 * **_subject_train.txt_** : **7352** obs, **1** variables. Each row indicates the subject ID for the corresponding row in X_train.txt.
 * **_subject_test.txt_** : **2947** obs, **1** variables. Each row indicates the subject ID for the corresponding row in X_test.txt.
## How to use the R script
 To use the R script, it is assumed that your working directory has a folder "UCI HAR Dataset/", which was created when you download
 this assignment data package and unzipped it. And the final tidy dataset is stored into "tidy_data.txt" under your working directory
 (assume it is the folder when you cloned this Github repos).

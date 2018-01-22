## How to reproduce my result
* **Step 1:** Directly clone this Github repository to your laptop to a whatever folder you like, it will create a folder called **_'DS-Course3-Project'_**.
* **Step 2:** Download project data and unzip it under **_'DS-Course3-Project'_**.
* **Step 3:** Open RStudio and set the folder **_'DS-Course3-Project'_** to be your working directory.
* **Step 4:** open _'run_analyis.R'_ to check the code and run it.
## File/folder list of this project
* **_README.MD_** : this file
* **_CodeBook.MD_** : file describes the process to get the final result dataset 'tidy_data.txt'
* **_run_analyis.R_** : file R script to create final dataset in 'tidy_data.txt'
* **_UCI HAR Dataset_** : the folder of raw dataset which is not included in this repos, but can be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The files about raw data features: _'features_info.txt'_ and _'features.txt'_ can be found in this folder.
* **_tidy_variables.txt_** : final dataset variable list
* **_tidy_data.txt_** : final tidy dataset
## The raw data files used for this project
8 raw data files under folder **_'UCI HAR Dataset'_** are used to create the tidy dataset:
 * **_X_train.txt_** : **7352** obs(observations), **561** variables. Each row has 561 data which either collected by accelerometer & gyroscope, or calculated based on the collected data. And the data of each row comes from a specific subject(the volunteer) who took a 
 specific activity. The acceleration(Acc vriables) signals are in standard gravity units 'g'. The angular velocity vector measured by the gyroscope use units _radians/second_.
 * **_X_test.txt_** : **2947** obs, **561** variables. Same data structure and definitions as X_train.txt.
 * **_y_train.txt_** : **7352** obs, **1** variables. Each row specify the activity ID for the corrsponding obs in X_train.txt
 * **_y_test.txt_** : **2947** obs, **1** variables. Each row specify the activity ID for the corresponding obs in X_test.txt
 * **_activity_labels.txt_** : **6** rows, **2** variables. Activity label list. The 1st column data are activity IDs, the 2nd are activity descriptive names
 * **_features.txt_** : **561** obs, **2** variables. 561 Variable names which are corresponding to the 561 variables in X_train.txt and X_test.txt. Features are normalized and bounded within \[-1,1].
 It also has the ID for each variables in column 1.
 * **_subject_train.txt_** : **7352** obs, **1** variables. Each row identifies the subject who performed the activity for each window sample, and each row is corresponding to the row in _'X_train.txt'_. Its range is from 1 to 30.
 * **_subject_test.txt_** : **2947** obs, **1** variables. Each row identifies the subject who performed the activity for each window sample, and each row is corresponding to the row in _'X_test.txt'_. Its range is from 1 to 30.

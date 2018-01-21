## 
## This project works on 8 raw data files to create tidy data:
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
##

# Load required packages for this assignment
library(dplyr)
# specify the raw data file path
filepath <- file.path(getwd(), "UCI HAR Dataset/")

##
## The first, read training and test observation data
## and merge them together
##

# read trainning and test observation data
x_train_file <- file.path(filepath, "train/X_train.txt")
x_test_file <- file.path(filepath, "test/X_test.txt")
x_train <- read.table(x_train_file)
x_test <- read.table(x_test_file)
# merge training and test observations
X_all <- rbind(x_train, x_test)

##
## The second, subtract observation data only for mean & standard
## devivation variables, and labels the data set with descriptive
## variable names
##

# read feature list
features_file <- file.path(filepath, "features.txt")
features <- read.table(features_file)
features <- rename(features, featureid = V1, feature = V2) # for readable purpose

# subtract the mean and standard deviation variables
mean_features <- features[grepl("mean", features$feature), ]
std_features <- features[grepl("std", features$feature), ]
subset_features <- merge(mean_features, std_features, by = c("featureid","feature"), all = TRUE)

# select observation data only for selected features (mean and std)
x_data <- select(X_all, subset_features$featureid) # 10299 obs, of 79 variables

# tidy feature names
subset_features$feature <- gsub("\\(\\)", "", subset_features$feature)
subset_features$feature <- gsub("BodyBody", "Body",  subset_features$feature)
subset_features$feature <- gsub("Freq", "",  subset_features$feature)

# labels the data set with descriptive variable names
names(x_data) <- subset_features$feature

##
## The third, get activity IDs for both training and test observations
## Then merge the data together and change the IDs to descriptive
## activity names
##

#read activity label list
activity_labels_file <- file.path(filepath, "activity_labels.txt")
act_labels <- read.table(activity_labels_file)
act_labels <- rename(act_labels, activityid = V1, activity = V2)

# read training and test observations activity label IDs
y_train_file <- file.path(filepath, "train/y_train.txt")
y_test_file <- file.path(filepath, "test/y_test.txt")
y_train <- read.table(y_train_file)
y_test <- read.table(y_test_file)

# merge training and test observations activity label IDs
y_all <- rbind(y_train, y_test) # 10299 obs. of 1 variable

# Uses descriptive activity names to replace active ID values
y_all <- rename(y_all, activityid = V1) # for readble, don't use "V1" as column name
y_all$activityid <- as.factor(y_all$activityid)
y_all <- sapply(y_all$activityid, function(y) {y <- as.character(act_labels$activity[as.numeric(y)])})
y_all <- as.data.frame(y_all) # change to data.frame
names(y_all) <- "activity" # now change column name to be "activity"

##
## The fourth, get subject data for both training and test observations
## Then merge them together
##

# read subject data for both training and test observations
subject_train_file <- file.path(filepath, "train/subject_train.txt")
subject_test_file <- file.path(filepath, "test/subject_test.txt")
subject_train <- read.table(subject_train_file)
subject_test <- read.table(subject_test_file)
# merge together
subject_all <- rbind(subject_train, subject_test) # 10299 obs. 1 variable
# give a descriptive column name
names(subject_all) <- "subject"

##
## The Fifth, Create the final dataset
##

temp_df <- merge(subject_all, y_all, by.x = 0, by.y = 0)
temp_df <- select(temp_df, subject, activity)
all_data <- merge(temp_df, x_data, by.x = 0, by.y = 0)
all_data <- all_data[ , -which(names(all_data) %in% c("Row.names"))]

##
## Finally, Create tidy data set with the average of each variable
## for all subjects and activities, and store the tidy dataset to
## file.
##

# change to "tbl_df"
tidy_table <- tbl_df(all_data)
# group by subject and activity
grouped_tbl <-group_by(tidy_table, subject, activity)
# apply means to each subgroups and all variables
final_tidy_tbl <- summarise_all(grouped_tbl, funs(mean))
# export the tidy data to file
destfile <- "tidy_data.txt"
write.table(final_tidy_tbl, file=destfile, row.names=FALSE, col.names=TRUE, sep="\t", quote=TRUE)
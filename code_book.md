Wearable Computing Data Project - Code Book
===========================================

# Code Variables

Following is a list of variables used in the code

* "data_train_x" - device data for the training set
* "data_train_y" - activity ids for the training set
* "data_train_subject" - subject ids for the training set
* "data_test_x" - device data for the test set
* "data_test_y" - activity ids for the test set
* "data_test_subject" - subject ids for the test set
* "activity_labels" - a lookup table of human-readable values for the activities
* "activity_labels_train" - contains a list of activities for each row of the training set
* "activity_labels_test" - contains a list of activities for each row of the test set
* "fields" - contains a list of the names of the fields used for the device data
* "train_combined" - contains the combined fields from the device data, subject id, and activity labels for the training set
* "test_combined" - contains the combined fields from the device data, subject id, and activity labels for the test set
* "combined_data" - contains the combined rows of data from the train_combined and test_combined data objects
* "cd_fields" - contains the total fields used for the combined_data object
* "target_fields" - contains only the fields we will need to perform our final analysis
* "melt_fields" - contains only the device data fields we will need to perform our final analysis
* "simplified_data" - contains all the data necessary to perform our final analysis, but does not contain unnecessary data
* "dataMelt" - organizes the simplified_data by the subject id and activity factors
* "tidyData" - final, summarized data containing the averages for each of the fields broken down by subject and activity type

## Data Fields

The following data fields are used:

# Data Melt IDs

* "subject"
* "activity_label"

# Device Data Fields

* "tBodyAcc-mean()-X"
* "tBodyAcc-mean()-Y"
* "tBodyAcc-mean()-Z"
* "tBodyAcc-std()-X"
* "tBodyAcc-std()-Y"
* "tBodyAcc-std()-Z"
* "tGravityAcc-mean()-X"
* "tGravityAcc-mean()-Y"
* "tGravityAcc-mean()-Z"
* "tGravityAcc-std()-X"
* "tGravityAcc-std()-Y"
* "tGravityAcc-std()-Z"
* "tBodyAccJerk-mean()-X"
* "tBodyAccJerk-mean()-Y"
* "tBodyAccJerk-mean()-Z"
* "tBodyAccJerk-std()-X"
* "tBodyAccJerk-std()-Y"
* "tBodyAccJerk-std()-Z"
* "tBodyGyro-mean()-X"
* "tBodyGyro-mean()-Y"
* "tBodyGyro-mean()-Z"
* "tBodyGyro-std()-X"
* "tBodyGyro-std()-Y"
* "tBodyGyro-std()-Z"
* "tBodyGyroJerk-mean()-X"
* "tBodyGyroJerk-mean()-Y"
* "tBodyGyroJerk-mean()-Z"
* "tBodyGyroJerk-std()-X"
* "tBodyGyroJerk-std()-Y"
* "tBodyGyroJerk-std()-Z"
* "tBodyAccMag-mean()"
* "tBodyAccMag-std()"
* "tGravityAccMag-mean()"
* "tGravityAccMag-std()"
* "tBodyAccJerkMag-mean()"
* "tBodyAccJerkMag-std()"
* "tBodyGyroMag-mean()"
* "tBodyGyroMag-std()"
* "tBodyGyroJerkMag-mean()"
* "tBodyGyroJerkMag-std()"
* "fBodyAcc-mean()-X"
* "fBodyAcc-mean()-Y"
* "fBodyAcc-mean()-Z"
* "fBodyAcc-std()-X"
* "fBodyAcc-std()-Y"
* "fBodyAcc-std()-Z"
* "fBodyAcc-meanFreq()-X"
* "fBodyAcc-meanFreq()-Y"
* "fBodyAcc-meanFreq()-Z"
* "fBodyAccJerk-mean()-X"
* "fBodyAccJerk-mean()-Y"
* "fBodyAccJerk-mean()-Z"
* "fBodyAccJerk-std()-X"
* "fBodyAccJerk-std()-Y"
* "fBodyAccJerk-std()-Z"
* "fBodyAccJerk-meanFreq()-X"
* "fBodyAccJerk-meanFreq()-Y"
* "fBodyAccJerk-meanFreq()-Z"
* "fBodyGyro-mean()-X"
* "fBodyGyro-mean()-Y"
* "fBodyGyro-mean()-Z"
* "fBodyGyro-std()-X"
* "fBodyGyro-std()-Y"
* "fBodyGyro-std()-Z"
* "fBodyGyro-meanFreq()-X"
* "fBodyGyro-meanFreq()-Y"
* "fBodyGyro-meanFreq()-Z"
* "fBodyAccMag-mean()"
* "fBodyAccMag-std()"
* "fBodyAccMag-meanFreq()"
* "fBodyBodyAccJerkMag-mean()"
* "fBodyBodyAccJerkMag-std()"
* "fBodyBodyAccJerkMag-meanFreq()"
* "fBodyBodyGyroMag-mean()"
* "fBodyBodyGyroMag-std()"
* "fBodyBodyGyroMag-meanFreq()"
* "fBodyBodyGyroJerkMag-mean()"
* "fBodyBodyGyroJerkMag-std()"
* "fBodyBodyGyroJerkMag-meanFreq()"
* "angle(tBodyAccMean,gravity)"
* "angle(tBodyAccJerkMean),gravityMean)"
* "angle(tBodyGyroMean,gravityMean)"
* "angle(tBodyGyroJerkMean,gravityMean)"
* "angle(X,gravityMean)"
* "angle(Y,gravityMean)"
* "angle(Z,gravityMean)"


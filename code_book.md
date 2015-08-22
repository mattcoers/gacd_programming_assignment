Wearable Computing Data Project - Code Book
===========================================

Following is a list of variables used in the code

* data_train_x - device data for the training set
* data_train_y - activity ids for the training set
* data_train_subject - subject ids for the training set
* data_test_x - device data for the test set
* data_test_y - activity ids for the test set
* data_test_subject - subject ids for the test set
* activity_labels - a lookup table of human-readable values for the activities
* activity_labels_train - contains a list of activities for each row of the training set
* activity_labels_test - contains a list of activities for each row of the test set
* fields - contains a list of the names of the fields used for the device data
* train_combined - contains the combined fields from the device data, subject id, and activity labels for the training set
* test_combined - contains the combined fields from the device data, subject id, and activity labels for the test set
* combined_data - contains the combined rows of data from the train_combined and test_combined data objects
* cd_fields - contains the total fields used for the combined_data object
* target_fields - contains only the fields we will need to perform our final analysis
* melt_fields - contains only the device data fields we will need to perform our final analysis
* simplified_data - contains all the data necessary to perform our final analysis, but does not contain unnecessary data
* dataMelt - organizes the simplified_data by the subject id and activity
* tidyData - final, summarized data containing the averages for each of the fields broken down by subject and activity type

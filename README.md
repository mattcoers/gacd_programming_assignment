Wearable Computing Data Project - README
==========================================

This project imports data from several data files, transforms the data into a single data frame and then creates a summary of the data and returns a tidy data set. The returned data set contains the average value for all 'mean' and 'standard deviation' data points in the source data broken down by test subject and activity.

## Source Data

Data Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Description of the project that generated the source data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Files

'run_analysis.R' is the source code for this project.

'code_book.md' describes the variables used in creating the tidy data.

'tidyData.txt' is the file that is output by running the 'run_analysis.R' script.

## Data Source Files

There are two primary data sources, one for the training set, and one for the test set.

* X_train.txt - Device data for the training set
* Y_train.txt - Identifies the activity that is being performed for each row in the X_train.txt file
* subject_train.txt - Idetinifies the subject in for each row in the X_train.txt file
* X_test.txt - Device data for the test set
* Y_test.txt - Identifies the activity that is being performed for each row in the X_test.txt file
* subject_test.txt - Idetinifies the subject in for each row in the X_test.txt file
* activity_labels.txt - Lookup values for the activity ids in the Y_train.txt and Y_test.txt files
* features.txt - Labels for the X_train.txt and Y_train.txt files

## How The Code Works

The first section of code reads in the source data from all of the source files and stores them in R data objects. 

The second section of code creates and applies labels to the activities so instead of reporting on an integer value for the activity, we get a human-readable value like "walking" or "sitting".

The third section adds column names to the device data objects

The fourth section combines the data from training and test into a single data object and adds the columns for the subject and activity type.

The fifth section uses grep to pull only the fields that are needed for our analysis (i.e. those that deal with "mean" and "standard deviation"

The sixth section uses the "melt" function to group the data according to the activity and subject fields. It then applies a mean function to summarize the data for each grouping into an average value.

The seventh section writes the data to a files called "tidyData.txt"







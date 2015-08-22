## SET WORKING DIRECTORY
library(reshape2)
setwd("~/datascience")

## READ IN DATA

data_train_x <- read.table("./data/gacd/train/X_train.txt", sep="", header=FALSE)
data_train_y <- read.table("./data/gacd/train/y_train.txt", sep="", header=FALSE)
data_train_subject <- read.table("./data/gacd/train/subject_train.txt", sep="", header=FALSE)

data_test_x <- read.table("./data/gacd/test/X_test.txt", sep="", header=FALSE)
data_test_y <- read.table("./data/gacd/test/y_test.txt", sep="", header=FALSE)
data_test_subject <- read.table("./data/gacd/test/subject_test.txt", sep="", header=FALSE)

## CREATE ACTIVITY LABELS

activity_labels <- read.table("./data/gacd/activity_labels.txt")[2]
activity_labels_train <- data.frame(activity_labels[data_train_y[,1],])
activity_labels_test <- data.frame(activity_labels[data_test_y[,1],])

names(activity_labels_train)[1] <- "activity_label"
names(activity_labels_test)[1] <- "activity_label"

names(data_train_subject)[1] <- "subject"
names(data_test_subject)[1] <- "subject"

## ADD COLUMN NAMES

fields <- read.table("./data/gacd/features.txt")
names(data_train_x) <- unlist(fields[2])
names(data_test_x) <- unlist(fields[2])

## COMBINE DATA

train_combined <- cbind(data_train_subject, activity_labels_train, data_train_x)
test_combined <- cbind(data_test_subject, activity_labels_test, data_test_x)
combined_data <- rbind(train_combined, test_combined)

## DETERMINE THE FIELDS TO RETURN (MEAN AND STD)

cd_fields <- names(combined_data)
target_fields <- cd_fields[grep("mean|std|activity_label|subject",cd_fields, ignore.case = TRUE)]
melt_fields <- cd_fields[grep("mean|std",cd_fields, ignore.case = TRUE)]
simplified_data <- combined_data[,target_fields]

## MELT THE DATA AND CAST THE DATAFRAME

dataMelt <- melt(simplified_data, id=c("activity_label","subject"),measure.vars=melt_fields)
tidyData <- dcast(dataMelt, activity_label + subject ~ variable, mean)

## WRITE THE DATA OUT TO A TXT FILE

write.table(tidyData, file = "./tidyData.txt", row.names=FALSE)

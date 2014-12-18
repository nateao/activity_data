# Download and unzip data
download.file(
  "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip",
  "UCI_HAR_Dataset.zip")
unzip("UCI_HAR_Dataset.zip")

# Read data from base file
features <- read.table('./UCI HAR Dataset/features.txt',header = FALSE)
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)

# Read data from test group
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt', header = FALSE)
x_test <- read.table('./UCI HAR Dataset/test/X_test.txt', header = FALSE)
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt', header = FALSE)

# Read data from train group
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt', header = FALSE)
x_train <- read.table('./UCI HAR Dataset/train/X_train.txt', header = FALSE)
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt', header = FALSE)

# 1. Merge the training and the test sets to create one data set.

# Consolidate data into a single data set.
data_test <- cbind(subject_test, y_test, x_test)
data_train <- cbind(subject_train, y_train, x_train)
data_final <- rbind(data_test, data_train)

# 2. Appropriately label the data set with descriptive variable names.
column_names <- as.character(features$V2)
colnames(data_final) <- c("subject_ID", "activity_ID", column_names)

# 3. Extract only the measurements on the mean and standard deviation for each measurement.
columns_needed <- c(1, 2, grep(("mean"), colnames(data_final)),grep(("Mean"), colnames(data_final)), 
                    grep(("std"), colnames(data_final)))
data_final <- data_final[columns_needed]

# 4. Use descriptive activity names to name the activities in the data set.
colnames(activity_labels) <- c("activity_ID", "activity_name")
data_final <- merge(data_final, activity_labels, by = "activity_ID")

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
data_final$activity_ID <- NULL
data_tidy <- aggregate(data_final[colnames(data_final) != "subject_ID" & colnames(data_final) != "activity_name"], 
                       by = list(subject_ID = data_final$subject_ID, activity_name = data_final$activity_name), FUN = mean)

# Write tidy data set to a .txt file.
write.table(data_tidy, "activity_data_tidy.txt", row.names = FALSE)


library(dplyr)

# Load zipped data file from the provided URL.
# If the zip file has already been downloaded, skip this step.
if(!file.exists("./UCI HAR Dataset")){
    fileURL <- paste0("https://d396qusza40orc.cloudfront.net",
                      "/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
    download.file (fileURL, destfile = "./dataset.zip", method = "curl")
    unzip(zipfile="./dataset.zip")
    
    print("data zip file successfully downloaded")
}

# Read in data files from 'getwd()/UCI HAR Dataset...'.
# Append descriptove variable names from 'features.txt'.
# Features and activity data sets:
features <- read.table(
    file.path(getwd(), "UCI HAR Dataset/features.txt"),
    stringsAsFactors = FALSE)
activity_labels <- read.table(
    file.path(getwd(), "UCI HAR Dataset/activity_labels.txt"),
    col.names = (c("activity_class", "Activity")),
    stringsAsFactors = FALSE)

print("features data successfully loaded")

# Training data sets:
X_train <- read.table(
    file.path(getwd(), "UCI HAR Dataset/train/X_train.txt"),
    col.names = as.character(features[, 2]))
y_train <- read.table(
    file.path(getwd(), "UCI HAR Dataset/train/y_train.txt"),
    col.names = (c("activity_class")))
subject_train <- read.table(
    file.path(getwd(), "UCI HAR Dataset/train/subject_train.txt"),
    col.names = (c("Subject")))

print("training data successfully loaded")

# Test data sets:
X_test <- read.table(
    file.path(getwd(), "UCI HAR Dataset/test/X_test.txt"),
    col.names = as.character(features[, 2])) 
y_test <- read.table(
    file.path(getwd(), "UCI HAR Dataset/test/y_test.txt"),
    col.names = (c("activity_class")))
subject_test <- read.table(
    file.path(getwd(), "UCI HAR Dataset/test/subject_test.txt"),
    col.names = (c("Subject")))

print("test data successfully loaded")

# Select all measurment variables containing strings '[mM]ean' or 'std'.
# Sort indices to maintain variable order.
X_train <- X_train[, (sort(c(grep(".*[mM]ean.*|.*std.*", features[, 2]))))]
X_test <- X_test[, (sort(c(grep(".*[mM]ean.*|.*std.*", features[, 2]))))]

# Merge datasets.
X_mean_std <- rbind(cbind(y_train, subject_train, X_train), 
                    cbind(y_test, subject_test, X_test))

# Merge descriptive activity labels.
# Select columns in specifc order starting with the activity class labels.
# Arrange (order) by activity class and Subject
X_mean_std <- X_mean_std %>% 
    merge(activity_labels, by = "activity_class") %>%
    select(activity_class, Activity, Subject, everything()) %>%
    arrange(activity_class, Subject)

# Group by activity class, Activity and Subject and calculate the mean.
X_tidy <- X_mean_std %>%
    group_by(activity_class, Activity, Subject) %>%
    summarise_all(funs(mean(., na.rm=TRUE)))

# Write tidy data set to the working directory:
write.table(X_tidy, file.path(getwd(), "X_tidy.txt"), row.names=FALSE)
print("X_tidy.txt written to working directory")
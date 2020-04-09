------------------------------------------------------------------------

Project Instructions
--------------------

The purpose of this project is to demonstrate your ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that
can be used for later analysis. You will be graded by your peers on a
series of yes/no questions related to the project. You will be required
to submit: 1) a tidy data set as described below, 2) a link to a Github
repository with your script for performing the analysis, and 3) a code
book that describes the variables, the data, and any transformations or
work that you performed to clean up the data called CodeBook.md. You
should also include a README.md in the repo with your scripts. This repo
explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is
wearable computing - see for example this article . Companies like
Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to from the course
website represent data collected from the accelerometers from the
Samsung Galaxy S smartphone. A full description is available at the site
where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

You should create one R script called run\_analysis.R that does the
following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

------------------------------------------------------------------------

The R Script
------------

The task of getting, merging, ordering and grouping the data into the
desired data set with group means as defined in the instructions is done
with the R script file: **run\_analysis.R**

The script file requires the dplyr library: `library(dplyr)`

------------------------------------------------------------------------

Getting the Data
----------------

The script will download the zipped data from the provided URL to the
working directory and unzip the data into a file structure described
below. The ziped file is called: **dataset.zip**

The unzipped data will be located under the working directory in the
folder: **UCI HAR Dataset**

If the zipped data file is already in the working directory, this step
is skipped.

    if(!file.exists("./UCI HAR Dataset")){
        fileURL <- paste0("https://d396qusza40orc.cloudfront.net",
                          "/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
        download.file (fileURL, destfile = "./dataset.zip", method = "curl")
        unzip(zipfile="./dataset.zip")
        
        print("data zip file successfully downloaded")
    }

------------------------------------------------------------------------

Loading the Data into R and Assigning Variable Names
----------------------------------------------------

The data is provided in a number of data files in the folder structure
described below. All data sets are read into R as data frames.

Under the main folder "UCI HAR Dataset" are:

-   **features.txt** : The feature variable names.
-   **activity\_labels.txt** : The activity class and class labels.

The variable names for the activity labels data set
(activity\_labels.txt) are assigned with col.names() in read.table().

    features <- read.table(
        file.path(getwd(), "UCI HAR Dataset/features.txt"),
        stringsAsFactors = FALSE)
    activity_labels <- read.table(
        file.path(getwd(), "UCI HAR Dataset/activity_labels.txt"),
        col.names = (c("activity_class", "Activity")),
        stringsAsFactors = FALSE)

    print("features data successfully loaded")

The training and test data sets are located in the "UCI HAR
Dataset/train" and "UCI HAR Dataset/test" folders, respectively.

The variable names for the feature variables (features.txt), in the
training and test data sets, are assigned with col.names() in
read.table().  
The variable names for the activity and subject data sets are also
assigned.

Under the folder "UCI HAR Dataset/train" are:

-   **X\_train.txt** : The feature variable training data set.
-   **y\_train.txt** : The type of activitiy (range 1 to 6) conducted
    for the given observation.
-   **subject\_train.txt** : The subject (range 1 to 30) who performed
    the activity for the given observation.

<!-- -->

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

Under the folder "UCI HAR Dataset/test" are:

-   **X\_test.txt** : The feature variable test data set.
-   **y\_test.txt** : The type of activitiy (range 1 to 6) conducted for
    the given observation.
-   **subject\_test.txt** : The subject (range 1 to 30) who performed
    the activity for the given observation.

<!-- -->

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

Additional variables are also provided with the data set, but are not
used for the project. This data is located in the following folders:

    file.path(getwd(), "/UCI HAR Dataset/train/Inertial Signals")
    file.path(getwd(), "/UCI HAR Dataset/test/Inertial Signals")

------------------------------------------------------------------------

Finding and Applying the Relevant Feature Variables
---------------------------------------------------

All feature variables with the character string '\[mM\]ean' or 'std' are
selected using grep(), all other variables not matching the charater
strings are discarded. The order of the feature variables is maintained
by applying sort().

    X_train <- X_train[, (sort(c(grep(".*[mM]ean.*|.*std.*", features[, 2]))))]
    X_test <- X_test[, (sort(c(grep(".*[mM]ean.*|.*std.*", features[, 2]))))]

------------------------------------------------------------------------

Merging the Data Frames
-----------------------

The activity, subject, training and test data frames are merged using
the cbind() and rbind() into a new data frame, **X\_mean\_std**

The desired format is to have the activity and subject data as the
*first* and *second* variables of the new data frame.

    X_mean_std <- rbind(cbind(y_train, subject_train, X_train), 
                        cbind(y_test, subject_test, X_test))

------------------------------------------------------------------------

Applying Descriptive Activity Names
-----------------------------------

The descriptive activity labels are applied to the data frame using
merge(). The matching variable is the activity class variable found in
both **X\_mean\_std** and **activity\_labels**.

The observations are ordered with respect to the activity and subject
variables using arrange().

The script includes the activity labels as well as the activity class.
Ordering the data frame by activity class (and subject) preserves the
activity sequence given in the original data set, activity\_labels.txt.

    X_mean_std <- X_mean_std %>% 
        merge(activity_labels, by = "activity_class") %>%
        select(activity_class, Activity, Subject, everything()) %>%
        arrange(activity_class, Subject)

------------------------------------------------------------------------

Creating the Tidy Data Set
--------------------------

The "tidy" data set, **X\_tidy**, is the aggregate of the X\_mean\_std
data frame. The summary mean is calculated for each subset grouped by
activity and subject, utilising the combination of group\_by() and
summarise\_all().  
The mean() includes na.rm=TRUE, although not necesssary for the data
within this assignment.

    X_tidy <- X_mean_std %>%
        group_by(activity_class, Activity, Subject) %>%
        summarise_all(funs(mean(., na.rm=TRUE)))

------------------------------------------------------------------------

Writing the Tidy Data Set
-------------------------

The tidy data set is written back to the working directory as a text
file, **X\_tidy.txt**, using write.table().

    write.table(X_tidy, file.path(getwd(), "X_tidy.txt"), row.names=FALSE)
    print("X_tidy.txt written to working directory")

------------------------------------------------------------------------

Reading the Tidy Data Set back into R
-------------------------------------

The tidy data set, **X\_tidy.txt** can be viewed in R using
read.table().  
Reading the tidy data set back into R is not included in the
run\_analysis.R script file.

    X_tidy <- read.table(file.path(getwd(), "X_tidy.txt"), header=TRUE)

------------------------------------------------------------------------

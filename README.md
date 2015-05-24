# Getting and Cleaning Data Course Project

## Human Activity Recognition Using Smartphones Data Set 

Some background for the experiment...

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

A full description is available at this site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order to run the scripts successfully, please unzip the data from this location into your current working directory: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The file/folder structure under your current working directory should look like the following once the data is unzipped. The run_analysis program is expecting the data to be like this:

```
|-- UCI HAR Dataset
|   |-- activity_labels.txt
|   |-- features.txt
|   |-- train
|   |   |-- subject_train.txt
|   |   |-- X_train.txt
|   |   |-- y_train.txt
|   |-- test
|   |   |-- subject_test.txt
|   |   |-- X_test.txt
|   |   |-- y_test.txt
```

### UCI HAR Dataset Detail

The dataset includes the following files:
```
- features.txt: List of all features (column labels for both main data sets)
- activity_labels.txt: Links the class labels with their activity name (essentially providing more descriptive activity names)
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.
- test/subject_train.txt: Each row identifies the subject who performed the activity for each window sample.
```

### Analysis Performed 

The run_analysis.R script performs the following tasks...

- Imports data from all files above
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
  - Only including features that end in either mean() or std()
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Melts and casts the data set to ultimately return tidy data including the average of each variable for each activity and subject.

More information about the variables can be found in the [CodeBook.md](CodeBook.md) file.
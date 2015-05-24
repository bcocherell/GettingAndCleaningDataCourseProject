## Human Activity Recognition Using Smartphones Data Set 

The data used in this project was collected from the accelerometers of Samsung Galaxy S II smartphones. A full description is available at this site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order to run the scripts successfully, please unzip the data from this location into your current working directory: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The file/folder structure under your current working directory should look like the following once the data is unzipped. The run_analysis program is expecting the data to be like this:

```
|-- UCI HAR Dataset
|   |-- features.txt (Column labels for both main datasets)
|   |-- activity_labels.txt (List of descriptive activity names)
|   |-- train
|   |   |-- subject_train.txt (Identifies subjects who performed activity for training set)
|   |   |-- X_train.txt (Training dataset)
|   |   |-- y_train.txt (Identifies activity performed for training set)
|   |-- test
|   |   |-- subject_test.txt (Identifies subjects who performed activity for test set)
|   |   |-- X_test.txt (Test dataset)
|   |   |-- y_test.txt (Identifies activity performed for test set)
```

### Analysis Performed 

The run_analysis.R script performs the following tasks

- Imports data from all files above
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
  - Only including columns from original dataset that end in either mean() or std()
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 

Using the steps above, run_analysis() returns a tidy data set with the average of each variable for each activity and each subject.

More information about the variables can be found in the [CodeBook.md](CodeBook.md) file.
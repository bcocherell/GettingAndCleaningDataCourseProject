# Getting and Cleaning Data Course Project

## Human Activity Recognition Using Smartphones Data Set 

Some background for the experiment...

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

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
- features.txt: List of all features (variable labels for both main data sets)
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
- Melts and casts the data to ultimately return a tidy data set with the average of each variable for each activity and subject.

Note: It is assumed that both dplyr and reshape2 packages are installed. If not, please run the following:
```
> install.packages("dplyr")
> install.packages("reshape2")
```

More information about the variables returned can be found in the [CodeBook.md](CodeBook.md) file.

Sample run...
 
```
> activityData <- run_analysis()

> str(activityData)
'data.frame':	180 obs. of  68 variables:
 $ Activity                                                      : chr  "LAYING" "LAYING" "LAYING" "LAYING" ...
 $ Subject                                                       : num  1 2 3 4 5 6 7 8 9 10 ...
 $ Time.Domain.Body.Accelerometer.Signal.Mean.X                  : num  0.222 0.281 0.276 0.264 0.278 ...
 $ Time.Domain.Body.Accelerometer.Signal.Mean.Y                  : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
 $ Time.Domain.Body.Accelerometer.Signal.Mean.Z                  : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
 $ Time.Domain.Body.Accelerometer.Signal.SD.X                    : num  -0.928 -0.974 -0.983 -0.954 -0.966 ...
 $ Time.Domain.Body.Accelerometer.Signal.SD.Y                    : num  -0.837 -0.98 -0.962 -0.942 -0.969 ...
 $ Time.Domain.Body.Accelerometer.Signal.SD.Z                    : num  -0.826 -0.984 -0.964 -0.963 -0.969 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.Mean.X               : num  -0.249 -0.51 -0.242 -0.421 -0.483 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.Mean.Y               : num  0.706 0.753 0.837 0.915 0.955 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.Mean.Z               : num  0.446 0.647 0.489 0.342 0.264 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.SD.X                 : num  -0.897 -0.959 -0.983 -0.921 -0.946 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.SD.Y                 : num  -0.908 -0.988 -0.981 -0.97 -0.986 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.SD.Z                 : num  -0.852 -0.984 -0.965 -0.976 -0.977 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.X             : num  0.0811 0.0826 0.077 0.0934 0.0848 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.Y             : num  0.00384 0.01225 0.0138 0.00693 0.00747 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.Z             : num  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.SD.X               : num  -0.958 -0.986 -0.981 -0.978 -0.983 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.SD.Y               : num  -0.924 -0.983 -0.969 -0.942 -0.965 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.SD.Z               : num  -0.955 -0.988 -0.982 -0.979 -0.985 ...
 $ Time.Domain.Body.Gryoscope.Signal.Mean.X                      : num  -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
 $ Time.Domain.Body.Gryoscope.Signal.Mean.Y                      : num  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
 $ Time.Domain.Body.Gryoscope.Signal.Mean.Z                      : num  0.149 0.145 0.138 0.17 0.16 ...
 $ Time.Domain.Body.Gryoscope.Signal.SD.X                        : num  -0.874 -0.988 -0.975 -0.973 -0.979 ...
 $ Time.Domain.Body.Gryoscope.Signal.SD.Y                        : num  -0.951 -0.982 -0.977 -0.961 -0.977 ...
 $ Time.Domain.Body.Gryoscope.Signal.SD.Z                        : num  -0.908 -0.96 -0.964 -0.962 -0.961 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.X                 : num  -0.107 -0.102 -0.1 -0.105 -0.102 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.Y                 : num  -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.Z                 : num  -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.SD.X                   : num  -0.919 -0.993 -0.98 -0.975 -0.983 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.SD.Y                   : num  -0.968 -0.99 -0.987 -0.987 -0.984 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.SD.Z                   : num  -0.958 -0.988 -0.983 -0.984 -0.99 ...
 $ Time.Domain.Body.Accelerometer.Signal.Magnitude.Mean          : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ Time.Domain.Body.Accelerometer.Signal.Magnitude.SD            : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.Magnitude.Mean       : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ Time.Domain.Gravity.Accelerometer.Signal.Magnitude.SD         : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.Mean     : num  -0.954 -0.988 -0.979 -0.97 -0.98 ...
 $ Time.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.SD       : num  -0.928 -0.986 -0.976 -0.961 -0.977 ...
 $ Time.Domain.Body.Gryoscope.Signal.Magnitude.Mean              : num  -0.875 -0.95 -0.952 -0.93 -0.947 ...
 $ Time.Domain.Body.Gryoscope.Signal.Magnitude.SD                : num  -0.819 -0.961 -0.954 -0.947 -0.958 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.Mean         : num  -0.963 -0.992 -0.987 -0.985 -0.986 ...
 $ Time.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.SD           : num  -0.936 -0.99 -0.983 -0.983 -0.984 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.Mean.X             : num  -0.939 -0.977 -0.981 -0.959 -0.969 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.Mean.Y             : num  -0.867 -0.98 -0.961 -0.939 -0.965 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.Mean.Z             : num  -0.883 -0.984 -0.968 -0.968 -0.977 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.SD.X               : num  -0.924 -0.973 -0.984 -0.952 -0.965 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.SD.Y               : num  -0.834 -0.981 -0.964 -0.946 -0.973 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.SD.Z               : num  -0.813 -0.985 -0.963 -0.962 -0.966 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.X        : num  -0.957 -0.986 -0.981 -0.979 -0.983 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.Y        : num  -0.922 -0.983 -0.969 -0.944 -0.965 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.Z        : num  -0.948 -0.986 -0.979 -0.975 -0.983 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.X          : num  -0.964 -0.987 -0.983 -0.98 -0.986 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.Y          : num  -0.932 -0.985 -0.971 -0.944 -0.966 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.Z          : num  -0.961 -0.989 -0.984 -0.98 -0.986 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.Mean.X                 : num  -0.85 -0.986 -0.97 -0.967 -0.976 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.Mean.Y                 : num  -0.952 -0.983 -0.978 -0.972 -0.978 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.Mean.Z                 : num  -0.909 -0.963 -0.962 -0.961 -0.963 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.SD.X                   : num  -0.882 -0.989 -0.976 -0.975 -0.981 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.SD.Y                   : num  -0.951 -0.982 -0.977 -0.956 -0.977 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.SD.Z                   : num  -0.917 -0.963 -0.967 -0.966 -0.963 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.Magnitude.Mean     : num  -0.862 -0.975 -0.966 -0.939 -0.962 ...
 $ Frequency.Domain.Body.Accelerometer.Signal.Magnitude.SD       : num  -0.798 -0.975 -0.968 -0.937 -0.963 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.Mean: num  -0.933 -0.985 -0.976 -0.962 -0.977 ...
 $ Frequency.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.SD  : num  -0.922 -0.985 -0.975 -0.958 -0.976 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.Magnitude.Mean         : num  -0.862 -0.972 -0.965 -0.962 -0.968 ...
 $ Frequency.Domain.Body.Gryoscope.Signal.Magnitude.SD           : num  -0.824 -0.961 -0.955 -0.947 -0.959 ...
 $ Frequency.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.Mean    : num  -0.942 -0.99 -0.984 -0.984 -0.985 ...
 $ Frequency.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.SD      : num  -0.933 -0.989 -0.983 -0.983 -0.983 ...
```
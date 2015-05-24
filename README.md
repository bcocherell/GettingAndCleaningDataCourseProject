## Human Activity Recognition Using Smartphones Data Set 

The data used in this project was collected from the accelerometers of Samsung Galaxy S II smartphones. A full description is available at this site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order to run the scripts successfully, please unzip the data from this location into your current working directory: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The file/folder structure under your current working directory should look like the following once the data is unzipped. The run_analysis program is expecting the data to be like this:

```
|-- UCI HAR Dataset
|   |-- features_info.txt
|   |-- features.txt
|   |-- activity_labels.txt
|   |-- train
|   |   |-- subject_train.txt
|   |   |-- X_train.txt
|   |   |-- y_train.txt
|   |-- test
|   |   |-- subject_test.txt
|   |   |-- X_test.txt
|   |   |-- y_test.txt
```

http://github.com - automatic!
[GitHub](http://github.com)

- 'UCI HAR Dataset/README.txt'

- 'UCI HAR Dataset/features_info.txt': Shows information about the variables used on the feature vector.

- 'UCI HAR Dataset/features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


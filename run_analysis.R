run_analysis <- function() {

  require(dplyr)
  require(reshape2)
  
  ## Get list of features from features.txt file... will be used as column names for upcoming datasets
  
  featuresData <- read.table("UCI HAR Dataset/features.txt", header = FALSE, col.names = c("f.id", "feature"), colClasses = c("numeric", "character"), nrows = 561)
  
  ## Get list of descriptive activity names from activity_labels.txt file
  
  activityData <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("a.id", "activity"), colClasses = c("numeric", "character"), nrows = 6)
   
  ## Merge training data sets (X_train.txt, y_train.txt, subject_train.txt files) into trainingData data frame

  trainingData <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, comment.char = "", nrows = 7352, colClasses = "numeric", col.names = featuresData$feature)
  trainingActivityData <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, comment.char = "", nrows = 7352, colClasses = "numeric", col.names = c("a.id"))
  trainingSubjectData <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, comment.char = "", nrows = 7352, colClasses = "numeric", col.names = c("subject"))
  
  trainingData$a.id <- trainingActivityData$a.id
  trainingData$subject <- trainingSubjectData$subject
  
  ## Merge testing data sets (X_test.txt, y_test.txt, subject_test.txt files) into testingData data frame
  
  testingData <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, comment.char = "", nrows = 2947, colClasses = "numeric", col.names = featuresData$feature)
  testingActivityData <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, comment.char = "", nrows = 2947, colClasses = "numeric", col.names = c("a.id"))
  testingSubjectData <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, comment.char = "", nrows = 2947, colClasses = "numeric", col.names = c("subject"))
  
  testingData$a.id <- testingActivityData$a.id
  testingData$subject <- testingSubjectData$subject
  
  ## Merge training and testing data sets into one set
  
  mainData <- rbind(trainingData, testingData)
  
  ## Include descriptive activity names using merge function
  
  mainActivityData <- merge(mainData, activityData, by.x="a.id", by.y="a.id")
  
  ## Extracting only the measurements on the mean and standard deviation for each measurement as required

  subsetActivityData <- select ( mainActivityData, matches("activity|subject|mean\\.\\.|std\\.\\.", ignore.case = FALSE))
  
  ## Applying more descriptive variable names to activity data
  
  descriptiveColumnNames = c("Time.Domain.Body.Accelerometer.Signal.Mean.X",
	"Time.Domain.Body.Accelerometer.Signal.Mean.Y",
	"Time.Domain.Body.Accelerometer.Signal.Mean.Z",
	"Time.Domain.Body.Accelerometer.Signal.SD.X",
	"Time.Domain.Body.Accelerometer.Signal.SD.Y",
	"Time.Domain.Body.Accelerometer.Signal.SD.Z",
	"Time.Domain.Gravity.Accelerometer.Signal.Mean.X",
	"Time.Domain.Gravity.Accelerometer.Signal.Mean.Y",
	"Time.Domain.Gravity.Accelerometer.Signal.Mean.Z",
	"Time.Domain.Gravity.Accelerometer.Signal.SD.X",
	"Time.Domain.Gravity.Accelerometer.Signal.SD.Y",
	"Time.Domain.Gravity.Accelerometer.Signal.SD.Z",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.X",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.Y",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.Z",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.SD.X",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.SD.Y",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.SD.Z",
	"Time.Domain.Body.Gryoscope.Signal.Mean.X",
	"Time.Domain.Body.Gryoscope.Signal.Mean.Y",
	"Time.Domain.Body.Gryoscope.Signal.Mean.Z",
	"Time.Domain.Body.Gryoscope.Signal.SD.X",
	"Time.Domain.Body.Gryoscope.Signal.SD.Y",
	"Time.Domain.Body.Gryoscope.Signal.SD.Z",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.X",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.Y",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.Z",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.SD.X",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.SD.Y",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.SD.Z",
	"Time.Domain.Body.Accelerometer.Signal.Magnitude.Mean",
	"Time.Domain.Body.Accelerometer.Signal.Magnitude.SD",
	"Time.Domain.Gravity.Accelerometer.Signal.Magnitude.Mean",
	"Time.Domain.Gravity.Accelerometer.Signal.Magnitude.SD",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.Mean",
	"Time.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.SD",
	"Time.Domain.Body.Gryoscope.Signal.Magnitude.Mean",
	"Time.Domain.Body.Gryoscope.Signal.Magnitude.SD",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.Mean",
	"Time.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.SD",
	"Frequency.Domain.Body.Accelerometer.Signal.Mean.X",
	"Frequency.Domain.Body.Accelerometer.Signal.Mean.Y",
	"Frequency.Domain.Body.Accelerometer.Signal.Mean.Z",
	"Frequency.Domain.Body.Accelerometer.Signal.SD.X",
	"Frequency.Domain.Body.Accelerometer.Signal.SD.Y",
	"Frequency.Domain.Body.Accelerometer.Signal.SD.Z",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.X",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.Y",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.Z",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.X",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.Y",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.Z",
	"Frequency.Domain.Body.Gryoscope.Signal.Mean.X",
	"Frequency.Domain.Body.Gryoscope.Signal.Mean.Y",
	"Frequency.Domain.Body.Gryoscope.Signal.Mean.Z",
	"Frequency.Domain.Body.Gryoscope.Signal.SD.X",
	"Frequency.Domain.Body.Gryoscope.Signal.SD.Y",
	"Frequency.Domain.Body.Gryoscope.Signal.SD.Z",
	"Frequency.Domain.Body.Accelerometer.Signal.Magnitude.Mean",
	"Frequency.Domain.Body.Accelerometer.Signal.Magnitude.SD",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.Mean",
	"Frequency.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.SD",
	"Frequency.Domain.Body.Gryoscope.Signal.Magnitude.Mean",
	"Frequency.Domain.Body.Gryoscope.Signal.Magnitude.SD",
	"Frequency.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.Mean",
	"Frequency.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.SD",
	"Subject",
	"Activity")
  
  colnames(subsetActivityData) <- descriptiveColumnNames
  
  # Extracting tidy data set with the average of each variable for each activity and each subject using melt and cast functions
  
  activityMelt <- melt(subsetActivityData, id=c("Activity","Subject"))
  
  dcast(activityMelt, Activity + Subject ~ variable, fun.aggregate = mean, na.rm = TRUE)
  
}


 
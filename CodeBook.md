## Code Book

Data for this project comes from accelerometer and gyroscope 3-axial raw signals. Time domain signals were captured at a constant rate of 50 Hz (corresponding to columns that start with 'Time.Domain'). They were then filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (corresponding to columns labelled 'Body' and 'Gravity', respectively) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (columns labelled 'Jerk.Signal'.) Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (columns labelled 'Magnitude'.) 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. (Note: columns are labelled 'Frequency.Domain' to indicate frequency domain signals.) 

- 'X', 'Y', and 'Z' are used to denote the 3-axial signals in the X, Y and Z directions. 
- Mean and SD (standard deviation) values are estimated for each category. 


### List of columns returned by run_analysis function (each an overall average for each activity and subject):

Activity
Subject
Time.Domain.Body.Accelerometer.Signal.Mean.X
Time.Domain.Body.Accelerometer.Signal.Mean.Y
Time.Domain.Body.Accelerometer.Signal.Mean.Z
Time.Domain.Body.Accelerometer.Signal.SD.X
Time.Domain.Body.Accelerometer.Signal.SD.Y
Time.Domain.Body.Accelerometer.Signal.SD.Z
Time.Domain.Gravity.Accelerometer.Signal.Mean.X
Time.Domain.Gravity.Accelerometer.Signal.Mean.Y
Time.Domain.Gravity.Accelerometer.Signal.Mean.Z
Time.Domain.Gravity.Accelerometer.Signal.SD.X
Time.Domain.Gravity.Accelerometer.Signal.SD.Y
Time.Domain.Gravity.Accelerometer.Signal.SD.Z
Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.X
Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.Y
Time.Domain.Body.Accelerometer.Jerk.Signal.Mean.Z
Time.Domain.Body.Accelerometer.Jerk.Signal.SD.X
Time.Domain.Body.Accelerometer.Jerk.Signal.SD.Y
Time.Domain.Body.Accelerometer.Jerk.Signal.SD.Z
Time.Domain.Body.Gryoscope.Signal.Mean.X
Time.Domain.Body.Gryoscope.Signal.Mean.Y
Time.Domain.Body.Gryoscope.Signal.Mean.Z
Time.Domain.Body.Gryoscope.Signal.SD.X
Time.Domain.Body.Gryoscope.Signal.SD.Y
Time.Domain.Body.Gryoscope.Signal.SD.Z
Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.X
Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.Y
Time.Domain.Body.Gryoscope.Jerk.Signal.Mean.Z
Time.Domain.Body.Gryoscope.Jerk.Signal.SD.X
Time.Domain.Body.Gryoscope.Jerk.Signal.SD.Y
Time.Domain.Body.Gryoscope.Jerk.Signal.SD.Z
Time.Domain.Body.Accelerometer.Signal.Magnitude.Mean
Time.Domain.Body.Accelerometer.Signal.Magnitude.SD
Time.Domain.Gravity.Accelerometer.Signal.Magnitude.Mean
Time.Domain.Gravity.Accelerometer.Signal.Magnitude.SD
Time.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.Mean
Time.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.SD
Time.Domain.Body.Gryoscope.Signal.Magnitude.Mean
Time.Domain.Body.Gryoscope.Signal.Magnitude.SD
Time.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.Mean
Time.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.SD
Frequency.Domain.Body.Accelerometer.Signal.Mean.X
Frequency.Domain.Body.Accelerometer.Signal.Mean.Y
Frequency.Domain.Body.Accelerometer.Signal.Mean.Z
Frequency.Domain.Body.Accelerometer.Signal.SD.X
Frequency.Domain.Body.Accelerometer.Signal.SD.Y
Frequency.Domain.Body.Accelerometer.Signal.SD.Z
Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.X
Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.Y
Frequency.Domain.Body.Accelerometer.Jerk.Signal.Mean.Z
Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.X
Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.Y
Frequency.Domain.Body.Accelerometer.Jerk.Signal.SD.Z
Frequency.Domain.Body.Gryoscope.Signal.Mean.X
Frequency.Domain.Body.Gryoscope.Signal.Mean.Y
Frequency.Domain.Body.Gryoscope.Signal.Mean.Z
Frequency.Domain.Body.Gryoscope.Signal.SD.X
Frequency.Domain.Body.Gryoscope.Signal.SD.Y
Frequency.Domain.Body.Gryoscope.Signal.SD.Z
Frequency.Domain.Body.Accelerometer.Signal.Magnitude.Mean
Frequency.Domain.Body.Accelerometer.Signal.Magnitude.SD
Frequency.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.Mean
Frequency.Domain.Body.Accelerometer.Jerk.Signal.Magnitude.SD
Frequency.Domain.Body.Gryoscope.Signal.Magnitude.Mean
Frequency.Domain.Body.Gryoscope.Signal.Magnitude.SD
Frequency.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.Mean
Frequency.Domain.Body.Gryoscope.Jerk.Signal.Magnitude.SD
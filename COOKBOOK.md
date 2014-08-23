Cookbook for tidy.txt dataset
==============================

All values from the variables are the mean and standard deviation signals from the original dataset and are bounded between [-1,1] Hz. We get one record for each subject and activity.

* Subject<br />
			
		Its range is from 1 to 30

* Activity<br />
	
		Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Next variable names are composed by:

- First part:
	- **Time**: Time domain signal captured at a constant rate of 50 Hz
	- **Frequency**: Fast Fourier Transform (FFT) applied to the equivalent variable with "Time" prefix 

- Second part:

	- **BodyAcc**: Body linear acceleration signals
	- **BodyGiro**: Body angular velocity signals
	- **GravityAcc**: Gravity acceleration signals

- Third part (optional):

	- **Jerk** = variables derived from "BodyAcc" or "BodyGiro"

- Fourth part:

	- **Mean** = mean of measures
	- **Std** = standard deviation of measures
 
- Fifth part:

	- **X**, **Y** or **Z** axis

* Variables values are expressed in Hz.

* Variables:

	* TimeBodyAccMeanX
	* TimeBodyAccMeanY
	* TimeBodyAccMeanZ
	* TimeBodyAccStdX
	* TimeBodyAccStdY
	* TimeBodyAccStdZ
	* TimeGravityAccMeanX
	* TimeGravityAccMeanY
	* TimeGravityAccMeanZ
	* TimeGravityAccStdX
	* TimeGravityAccStdY
	* TimeGravityAccStdZ
	* TimeBodyAccJerkMeanX
	* TimeBodyAccJerkMeanY
	* TimeBodyAccJerkMeanZ
	* TimeBodyAccJerkStdX
	* TimeBodyAccJerkStdY
	* TimeBodyAccJerkStdZ
	* TimeBodyGyroMeanX
	* TimeBodyGyroMeanY
	* TimeBodyGyroMeanZ
	* TimeBodyGyroStdX
	* TimeBodyGyroStdY
	* TimeBodyGyroStdZ
	* TimeBodyGyroJerkMeanX
	* TimeBodyGyroJerkMeanY
	* TimeBodyGyroJerkMeanZ
	* TimeBodyGyroJerkStdX
	* TimeBodyGyroJerkStdY
	* TimeBodyGyroJerkStdZ
	* TimeBodyAccMagMean
	* TimeBodyAccMagStd
	* TimeGravityAccMagMean
	* TimeGravityAccMagStd
	* TimeBodyAccJerkMagMean
	* TimeBodyAccJerkMagStd
	* TimeBodyGyroMagMean
	* TimeBodyGyroMagStd
	* TimeBodyGyroJerkMagMean
	* TimeBodyGyroJerkMagStd
	* FrequencyBodyAccMeanX
	* FrequencyBodyAccMeanY
	* FrequencyBodyAccMeanZ
	* FrequencyBodyAccStdX
	* FrequencyBodyAccStdY
	* FrequencyBodyAccStdZ
	* FrequencyBodyAccJerkMeanX
	* FrequencyBodyAccJerkMeanY
	* FrequencyBodyAccJerkMeanZ
	* FrequencyBodyAccJerkStdX
	* FrequencyBodyAccJerkStdY
	* FrequencyBodyAccJerkStdZ
	* FrequencyBodyGyroMeanX
	* FrequencyBodyGyroMeanY
	* FrequencyBodyGyroMeanZ
	* FrequencyBodyGyroStdX
	* FrequencyBodyGyroStdY
	* FrequencyBodyGyroStdZ
	* FrequencyBodyAccMagMean
	* FrequencyBodyAccMagStd
	* FrequencyBodyBodyAccJerkMagMean
	* FrequencyBodyBodyAccJerkMagStd
	* FrequencyBodyBodyGyroMagMean
	* FrequencyBodyBodyGyroMagStd
	* FrequencyBodyBodyGyroJerkMagMean
	* FrequencyBodyBodyGyroJerkMagStd
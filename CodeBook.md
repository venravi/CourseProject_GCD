The dataSet.txt contains 68 variables.

* The first one is the **activity** label, with values: "Laying", "Sitting", "Standing", "Walking", "Walking downstairs" and
"Walking upstairs".

* The second one is the **subject** ID (1 to 30). 

* The next 66 variables are several features computed on the pre-processed sensor signals (accelerometer and gyroscope). These features are:

The mean for X, Y and Z directions of the 3-axial signal tBodyAcc (time domain; body motion component):

**tBodyAccMeanX**
**tBodyAccMeanY**
**tBodyAccMeanZ**

The std (standard deviation) for X, Y and Z directions of the 3-axial signal tBodyAcc (time domain; body motion component):

**tBodyAccStdX**
**tBodyAccStdY**
**tBodyAccStdZ**

The mean for X, Y and Z directions of the 3-axial signal tGravityAcc (time domain; gravitational component):

**tGravityAccMeanX**
**tGravityAccMeanY**
**tGravityAccMeanZ**

The std for X, Y and Z directions of the 3-axial signal tGravityAcc (time domain; gravitational component):

**tGravityAccStdX**
**tGravityAccStdY**
**tGravityAccStdZ**

The mean for X, Y and Z directions of the 3-axial signal tBodyAccJerk (time domain; body motion component):

**tBodyAccJerkMeanX**
**tBodyAccJerkMeanY**
**tBodyAccJerkMeanZ**

The std for X, Y and Z directions of the 3-axial signal tBodyAccJerk (time domain; body motion component):

**tBodyAccJerkStdX**
**tBodyAccJerkStdY**
**tBodyAccJerkStdZ**

The mean for X, Y and Z directions of the 3-axial signal tBodyGyro (time domain; body motion component):

**tBodyGyroMeanX**
**tBodyGyroMeanY**
**tBodyGyroMeanZ**

The std for X, Y and Z directions of the 3-axial signal tBodyGyro (time domain; body motion component):

**tBodyGyroStdX**
**tBodyGyroStdY**
**tBodyGyroStdZ**

The mean for X, Y and Z directions of the 3-axial signal tBodyGyroJerk (time domain; body motion component):

**tBodyGyroJerkMeanX**
**tBodyGyroJerkMeanY**
**tBodyGyroJerkMeanZ**

The std for X, Y and Z directions of the 3-axial signal tBodyGyroJerk (time domain; body motion component):

**tBodyGyroJerkStdX**
**tBodyGyroJerkStdY**
**tBodyGyroJerkStdZ**

The mean and std for the signal tBodyAccMag (time domain; body motion component):

**tBodyAccMagMean**
**tBodyAccMagStd**

The mean and std for the signal tGravityAccMag (time domain; gravitational component):

**tGravityAccMagMean**
**tGravityAccMagStd**

The mean and std for the signal tBodyAccJerkMag (time domain; body motion component):

**tBodyAccJerkMagMean**
**tBodyAccJerkMagStd**

The mean and std for the signal tBodyGyroMag (time domain; body motion component):

**tBodyGyroMagMean**
**tBodyGyroMagStd**

The mean and std for the signal tBodyGyroJerkMag (time domain; body motion component):

**tBodyGyroJerkMagMean**
**tBodyGyroJerkMagStd**

The mean for X, Y and Z directions of the 3-axial signal fBodyAcc (frequency domain; body motion component):

**fBodyAccMeanX**
**fBodyAccMeanY**
**fBodyAccMeanZ**

The std for X, Y and Z directions of the 3-axial signal fBodyAcc (frequency domain; body motion component):

**fBodyAccStdX**
**fBodyAccStdY**
**fBodyAccStdZ**

The mean for X, Y and Z directions of the 3-axial signal fBodyAccJerk (frequency domain; body motion component):

**fBodyAccJerkMeanX**
**fBodyAccJerkMeanY**
**fBodyAccJerkMeanZ**

The std for X, Y and Z directions of the 3-axial signal fBodyAccJerk (frequency domain; body motion component):

**fBodyAccJerkStdX**
**fBodyAccJerkStdY**
**fBodyAccJerkStdZ**

The mean for X, Y and Z directions of the 3-axial signal fBodyGyro (frequency domain; body motion component):

**fBodyGyroMeanX**
**fBodyGyroMeanY**
**fBodyGyroMeanZ**

The std for X, Y and Z directions of the 3-axial signal fBodyGyro (frequency domain; body motion component):

**fBodyGyroStdX**
**fBodyGyroStdY**
**fBodyGyroStdZ**

The mean and std for the signal fBodyAccMag (frequency domain; body motion component):

**fBodyAccMagMean**
**fBodyAccMagStd**

The mean and std for the signal fBodyAccJerkMag (frequency domain; body motion component):

**fBodyBodyAccJerkMagMean**
**fBodyBodyAccJerkMagStd**

The mean and std for the signal fBodyBodyGyroMag (frequency domain; body motion component):

**fBodyBodyGyroMagMean**
**fBodyBodyGyroMagStd**

The mean and std for the signal fBodyBodyGyroJerkMag (frequency domain; body motion component):

**fBodyBodyGyroJerkMagMean**
**fBodyBodyGyroJerkMagStd**

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each row on the text file is a combination of an activity and a subject. For each feature, it was computed the mean of several sliding windows of 2.56 sec in
that activity*subject combination.
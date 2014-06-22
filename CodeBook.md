CodeBook for the tidy data set
==============================

This code book provides information on the tidy data set which is the part of
course project within "Getting and Cleaning data" course.

The original data and a full description is available on the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To accomplish the task for the course project one needs to do the following:

1. Load, unzip and examine the original data;
2. Find the connections among the files and theirs content;
3. Produce a script which automatically loads the data files, merges them and
   creates an independent tidy data set as it is defined in the task for the
   course project.

A detailed description of such transformations is given in README.md.

Every row in the tidy data set represents an unique combination of an activity
and a subject. Along with them there is a corresponding vector of average values
of all the measurements on the mean and standard deviation for this combination.

The following abbreviations occur in the column names:
- ".mean" refers to "mean value";
- ".meanFreq" refers to "weighted average of the frequency components";
- ".std" refers to "standard deviation";
- ".X", ".Y", ".Z" refer to the corresponding axes.
All the float values are normalized and bounded within [-1,1].

Here is a description of all the columns:

activity
    text
	one of the names of activity:
	LAYING
	SITTING
	STANDING
	WALKING
	WALKING_DOWNSTAIRS
	WALKING_UPSTAIRS

subject
    integer
	anonymous integer index of subject in range 1-30

tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
    float
	body acceleration signal

tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
    float
	gravity acceleration signal

tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
    float
	body linear acceleration signal

tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
    float
	gyroscope signal

tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
    float
	angular velocity signal

tBodyAccMag.mean
tBodyAccMag.std
    float
	magnitude of body acceleration signal

tGravityAccMag.mean
tGravityAccMag.std
    float
	magnitude of gravity acceleration signal

tBodyAccJerkMag.mean
tBodyAccJerkMag.std
    float
	magnitude of body linear acceleration signal

tBodyGyroMag.mean
tBodyGyroMag.std
    float
	magnitude of gyroscope signal

tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
    float
	magnitude of angular velocity signal

fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
    float
	Fast Fourier Transform of body acceleration signal

fBodyAcc.meanFreq.X
fBodyAcc.meanFreq.Y
fBodyAcc.meanFreq.Z
    float
	Weighted average of the frequency components of fBodyAcc

fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
    float
	Fast Fourier Transform of body linear acceleration signal

fBodyAccJerk.meanFreq.X
fBodyAccJerk.meanFreq.Y
fBodyAccJerk.meanFreq.Z
    float
	Weighted average of the frequency components of fBodyAccJerk

fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
    float
	Fast Fourier Transform of gyroscope signal

fBodyGyro.meanFreq.X
fBodyGyro.meanFreq.Y
fBodyGyro.meanFreq.Z
    float
	Weighted average of the frequency components of fBodyGyro

fBodyAccMag.mean
fBodyAccMag.std
    float
	Fast Fourier Transform of magnitude of body acceleration signal

fBodyAccMag.meanFreq
    float
	Weighted average of the frequency components of fBodyAccMag

fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.std
    float
	Fast Fourier Transform of magnitude of body linear acceleration signal

fBodyBodyAccJerkMag.meanFreq
    float
	Weighted average of the frequency components of fBodyBodyAccJerkMag

fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
    float
	Fast Fourier Transform of magnitude of gyroscope signal

fBodyBodyGyroMag.meanFreq
    float
	Weighted average of the frequency components of fBodyBodyGyroMag

fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std
    float
	Fast Fourier Transform of magnitude of angular velocity signal

fBodyBodyGyroJerkMag.meanFreq
    float
	Weighted average of the frequency components of fBodyBodyGyroJerkMag

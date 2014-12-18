---
title: "activity_data_tidy Code Book"
output: html_document
---

## Raw Data

The original raw data for this project are from the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The website is:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Processing

These raw data are processed to form the tidy data set activity_data_tidy.txt by running the script run_analysis.R. Please see README.md for details.

## Variables

The tidy data set has a total of 88 variables. The first 2 are:

  * **subject_ID** - Numbers 1 through 30 identifying which identify each of the 30 volunteers for this study,
  * **activity_name** - The six activities carried out as part of this study, as described above.
  
The remaining 86 variables are named for the features selected as follows.

The features selected for the data set come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  * **tBodyAcc-XYZ**
  * **tGravityAcc-XYZ**
  * **tBodyAccJerk-XYZ**
  * **tBodyGyro-XYZ**
  * **tBodyGyroJerk-XYZ**
  * **tBodyAccMag**
  * **tGravityAccMag**
  * **tBodyAccJerkMag**
  * **tBodyGyroMag**
  * **tBodyGyroJerkMag**
  * **fBodyAcc-XYZ**
  * **fBodyAccJerk-XYZ**
  * **fBodyGyro-XYZ**
  * **fBodyAccMag**
  * **fBodyAccJerkMag**
  * **fBodyGyroMag**
  * **fBodyGyroJerkMag**

The set of variables that were estimated from these signals for the purposes of this project are: 

  * **mean(): Mean value**
  * **std(): Standard deviation**

(Note that many more variables were estimated as part of the study from which we get these raw data; see the website for details.)

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

  * **gravityMean**
  * **tBodyAccMean**
  * **tBodyAccJerkMean**
  * **tBodyGyroMean**
  * **tBodyGyroJerkMean**

Each of these features are averaged over each subject and each activity in the final tidy data set.



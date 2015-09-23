### Overview

This file describes the [data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), the variables, the variable selection process, and what aggregate function is used to get the tidy data set by running [run_analysis.R](https://github.com/edithbeen/CourseraCourses/blob/master/GettingCleaningData/run_analysis.R) under the same directory. 

### Data Description

#### Data Source
The original data set is from UCI Machine Learning Repository, and it is about human activity recognition using smartphones. It is free for download through http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

#### Design of Experiement
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

#### Variable Units
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

#### Data Size
Other than the subject ID (volunteers ID) and the activity type, the original data set has recorded a total of 561 features and 10299 observations that are derived from 17 3-axial sensor signals. 

#### License
Use of this dataset in publications must be acknowledged by referencing the following publication [1].

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

### Feature Variables

#### Feature Variables Overview
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. tBodyAcc-XYZ

2. tGravityAcc-XYZ

3. tBodyAccJerk-XYZ

4. tBodyGyro-XYZ

5. tBodyGyroJerk-XYZ

6. tBodyAccMag

7. tGravityAccMag

8. tBodyAccJerkMag

9. tBodyGyroMag

10. tBodyGyroJerkMag

11. fBodyAcc-XYZ

12. fBodyAccJerk-XYZ

13. fBodyGyro-XYZ

14. fBodyAccMag

15. fBodyAccJerkMag

16. fBodyGyroMag

17. fBodyGyroJerkMag

#### Feature Variable Types

##### Variables Derived from Signals

The set of variables that were estimated from these signals are: 

1. mean(): Mean value

2. std(): Standard deviation

3. mad(): Median absolute deviation 

4. max(): Largest value in array

5. min(): Smallest value in array

6. sma(): Signal magnitude area

7. energy(): Energy measure. Sum of the squares divided by the number of values. 

8. iqr(): Interquartile range 

9. entropy(): Signal entropy

10. arCoeff(): Autorregresion coefficients with Burg order equal to 4

11. correlation(): correlation coefficient between two signals

12. maxInds(): index of the frequency component with largest magnitude

13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency

14. skewness(): skewness of the frequency domain signal 

15. kurtosis(): kurtosis of the frequency domain signal 

16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

17. angle(): Angle between to vectors.

##### Additional Variables

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

1. gravityMean

2. tBodyAccMean

3. tBodyAccJerkMean

4. tBodyGyroMean

5. tBodyGyroJerkMean

#### Notes

1. Features are normalized and bounded within [-1,1].
2. Each feature vector is a row on the text file.

### Variable and Aggregation Function Selection

In addition to the subject ID and activity type, only the variables on the mean and standard deviation for each measurement are selected to create the aggregated data set. That is, only the variables created with "mean()" and "std()" of the sensor signals are selected. A total of 66 feature variables are selected. 

Meanwhile, the mean function is applied to create the aggregated data set. That is, the values in the created data set are the mean of the means and standard deviations. 




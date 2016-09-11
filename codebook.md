#CODE BOOK

COURSERA Data Science Specialization  
Getting and Cleaning Data, Final Project  
Author: S. Snyder, 10 Sep 16


###Components of the Code Book  
From the Getting and Cleaning Data, Week 1 lectures, the Code Book should include these 3 sections.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Study Design - a thorough description of how the data was collected.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Summary Choices - information about how the summary choices were made.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Code Book - description of each variable and its units.  


###Study Design  
From the author's data set description (<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#>):  

1. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

2. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

3. The following is provided for each record in the data set.  
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
    - Triaxial Angular velocity from the gyroscope.  
    - A 561-feature vector with time and frequency domain variables.  
    - Its activity label.  
    - An identifier of the subject who carried out the experiment.  


From the author's feature_info.txt file provided with the data set (<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>):  

4. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

5. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  

6. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  

7. These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyAcc-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tGravityAcc-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyAccJerk-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyGyro-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyGyroJerk-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyAccMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tGravityAccMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyAccJerkMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyGyroMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyGyroJerkMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyAcc-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyAccJerk-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyGyro-XYZ  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyAccMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyAccJerkMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyGyroMag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fBodyGyroJerkMag  

8. The set of variables that were estimated from these signals are:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mean(): Mean value  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;std(): Standard deviation  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mad(): Median absolute deviation   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;max(): Largest value in array  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min(): Smallest value in array  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sma(): Signal magnitude area  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;energy(): Energy measure. Sum of the squares divided by the number of values.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iqr(): Interquartile range  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;entropy(): Signal entropy  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;arCoeff(): Autorregresion coefficients with Burg order equal to 4  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;correlation(): correlation coefficient between two signals  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maxInds(): index of the frequency component with largest magnitude  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skewness(): skewness of the frequency domain signal  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kurtosis(): kurtosis of the frequency domain signal  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;angle(): Angle between to vectors.  

9. Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gravityMean  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyAccMean  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyAccJerkMean  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyGyroMean  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tBodyGyroJerkMean  

The complete list of variables of each feature vector is available in 'features.txt' [included in the UCI HAR Dataset.zip referenced above].


Notes:  
- Features are normalized and bound with [-1,1].  
- Each feature vector is a row on the text file.  


###Summary Choices  
The original data set had 561 features (described under Study Design). The final project criteria called for a tidy data set that included only features that were the mean and standard deviation for each measurement.  

For this tidyData set, I decided to include only those variable names with 'mean()' or 'std()' (paragraph 8 under Study Design) for the original 33 variables collected in the data set (Study Design, paragraph 7). Some of the variable names included variations of 'mean' (e.g., 'meanFreq', 'gravityMean'). However, taking the phrase 'mean and standard deviation for each measurement' literally, I chose not to include these mean measurements since there was no standard deviation measurement to go with them.  


###Code Book  
The Code Book should include a description of each variable and its units.  

In this case study, the units of measurement were eliminated when the authors normalized them, which brought measurements on different scales to a conceptually common scale.  

In addition, the measurements were all bound to the interval [-1,1], so this Code Book does not list possible values for each measurement variable, since they are all within this boundary.  

Measurements were taken in the time domain (t prefix on variables). Frequency domain measurements (f prefix on variables) were computed using a Fast Fourier Transform.


####Variables:  

- **activity**  
    * Activity performed by the subject while wearing a smartphone on the waist.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING_DOWNSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAYING  
- **subject**  
    * Number (1-30) representing the subject.  
- **tBodyAcc.mean...X**  
    * Mean of the x-coordinate of the body motion component of the accleration signal in the time domain.  
- **tBodyAcc.mean...Y**  
    * Mean of the y-coordinate of the body motion component of the accleration signal in the time domain.  
- **tBodyAcc.mean...Z**  
    * Mean of the z-coordinate of the body motion component of the accleration signal in the time domain.  
- **tGravityAcc.mean...X**  
    * Mean of the x-coordinate of the gravitational component of the acceleration signal in the time domain.  
- **tGravityAcc.mean...Y**  
    * Mean of the y-coordinate of the gravitational component of the acceleration signal in the time domain.  
- **tGravityAcc.mean...Z**  
    * Mean of the z-coordinate of the gravitational component of the acceleration signal in the time domain.  
- **tBodyAccJerk.mean...X**  
    * Mean of the x-coordinate of the jerking motion of the body acceleration in the time domain.  
- **tBodyAccJerk.mean...Y**  
    * Mean of the y-coordinate of the jerking motion of the body acceleration in the time domain.  
- **tBodyAccJerk.mean...Z**  
    * Mean of the z-coordinate of the jerking motion of the body acceleration in the time domain.  
- **tBodyGyro.mean...X**  
    * Mean of the x-coordinate of the body gyroscopic signal in the time domain.  
- **tBodyGyro.mean...Y**  
    * Mean of the y-coordinate of the body gyroscopic signal in the time domain.  
- **tBodyGyro.mean...Z**  
    * Mean of the z-coordinate of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerk.mean...X**  
    * Mean of the x-coordinate of the jerking motion of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerk.mean...Y**  
    * Mean of the y-coordinate of the jerking motion of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerk.mean...Z**  
    * Mean of the z-coordinate of the jerking motion of the body gyroscopic signal in the time domain.  
- **tBodyAccMag.mean..**  
    * Mean of the magnitude of the body acceleration in the time domain.  
- **tGravityAccMag.mean..**  
    * Mean of the magnitude of the gravitational acceleration in the time domain.  
- **tBodyAccJerkMag.mean..**  
    * Mean of the jerking motion of the body acceleration in the time domain.  
- **tBodyGyroMag.mean..**  
    * Mean of the magnitude of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerkMag.mean..**  
    * Mean of the magnitude of the jerking motion of the body gyroscopic signal in the time domain.  
- **fBodyAcc.mean...X**  
    * Mean of the x-coordinate of the body motion component of the acceleration signal in the frequency domain.  
- **fBodyAcc.mean...Y**  
    * Mean of the y-coordinate of the body motion component of the acceleration signal in the frequency domain.  
- **fBodyAcc.mean...Z**  
    * Mean of the z-coordinate of the body motion component of the acceleration signal in the frequency domain.  
- **fBodyAccJerk.mean...X**  
    * Mean of the x-coordinate of the jerking motion of the body acceleration in the frequency domain.  
- **fBodyAccJerk.mean...Y**  
    * Mean of the y-coordinate of the jerking motion of the body acceleration in the frequency domain.  
- **fBodyAccJerk.mean...Z**  
    * Mean of the z-coordinate of the jerking motion of the body acceleration in the frequency domain.  
- **fBodyGyro.mean...X**  
    * Mean of the x-coordinate of the body gyroscopic signal in the frequency domain.  
- **fBodyGyro.mean...Y**  
    * Mean of the y-coordinate of the body gyroscopic signal in the frequency domain.  
- **fBodyGyro.mean...Z**  
    * Mean of the z-coordinate of the body gyroscopic signal in the frequency domain.  
- **fBodyAccMag.mean..**  
    * Mean of the magnitude of the body acceleration signal in the frequency domain.  
- **fBodyBodyAccJerkMag.mean..**  
    * Mean of the magnitude of the jerking motion of the body acceleration in the frequency domain.  
- **fBodyBodyGyroMag.mean..**  
    * Mean of the magnitude of the body gyroscopic signal in the frequency domain.  
- **fBodyBodyGyroJerkMag.mean..**  
    * Mean of the magnitude of the jerking motion of the body gyroscopic signal in the frequency domain.  
- **tBodyAcc.std...X**  
    * Standard deviation of the x-coordinate of the body motion component of the acceleration signal in the time domain.  
- **tBodyAcc.std...Y**  
    * Standard deviation of the y-coordinate of the body motion component of the acceleration signal in the time domain.  
- **tBodyAcc.std...Z**  
    * Standard deviation of the z-coordinate of the body motion component of the acceleration signal in the time domain.  
- **tGravityAcc.std...X**  
    * Standard deviation of the x-coordinate of the gravitational component of the acceleration signal in time domain.  
- **tGravityAcc.std...Y**  
    * Standard deviation of the y-coordinate of the gravitational component of the acceleration signal in time domain.  
- **tGravityAcc.std...Z**  
    * Standard deviation of the z-coordinate of the gravitational component of the acceleration signal in time domain.  
- **tBodyAccJerk.std...X**  
    * Standard deviation of the x-coordinate of the jerking motion of the body acceleration in the time domain.  
- **tBodyAccJerk.std...Y**  
    * Standard deviation of the y-coordinate of the jerking motion of the body acceleration in the time domain.  
- **tBodyAccJerk.std...Z**  
    * Standard deviation of the z-coordinate of the jerking motion of the body acceleration in the time domain.  
- **tBodyGyro.std...X**  
    * Standard deviation of the x-coordinate of the body gyroscopic signal in the time domain.  
- **tBodyGyro.std...Y**  
    * Standard deviation of the y-coordinate of the body gyroscopic signal in the time domain.  
- **tBodyGyro.std...Z**  
    * Standard deviation of the z-coordinate of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerk.std...X**  
    * Standard deviation of the x-coordinate of the jerking motion of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerk.std...Y**  
    * Standard deviation of the y-coordinate of the jerking motion of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerk.std...Z**  
    * Standard deviation of the z-coordinate of the jerking motion of the body gyroscopic signal in the time domain.  
- **tBodyAccMag.std..**  
    * Standard deviation of the magnitude of the body acceleration in the time domain.  
- **tGravityAccMag.std..**  
    * Standard deviation of the magnitude of the gravitational acceleration in the time domain.  
- **tBodyAccJerkMag.std..**  
    * Standard deviation of the magnitude of the jerking motion of the body acceleration in the time domain.  
- **tBodyGyroMag.std..**  
    * Standard deviation of the magnitude of the body gyroscopic signal in the time domain.  
- **tBodyGyroJerkMag.std..**  
    * Standard deviation of the magnitude of the jerking motion of the body gyroscopic signal in the time domain.  
- **fBodyAcc.std...X**  
    * Standard deviation of the x-coordinate of the body component of the acceleration signal in the frequency domain.  
- **fBodyAcc.std...Y**  
    * Standard deviation of the y-coordinate of the body component of the acceleration signal in the frequency domain.  
- **fBodyAcc.std...Z**  
    * Standard deviation of the z-coordinate of the body component of the acceleration signal in the frequency domain.  
- **fBodyAccJerk.std...X**  
    * Standard deviation of the x-coordinate of the jerking motion of the body accceleration in the frequency domain.  
- **fBodyAccJerk.std...Y**  
    * Standard deviation of the y-coordinate of the jerking motion of the body accceleration in the frequency domain.  
- **fBodyAccJerk.std...Z**  
    * Standard deviation of the z-coordinate of the jerking motion of the body accceleration in the frequency domain.  
- **fBodyGyro.std...X**  
    * Standard deviation of the x-coordinate of the body gyroscopic signal int he frequency domain.  
- **fBodyGyro.std...Y**  
    * Standard deviation of the y-coordinate of the body gyroscopic signal int he frequency domain.  
- **fBodyGyro.std...Z**  
    * Standard deviation of the z-coordinate of the body gyroscopic signal int he frequency domain.  
- **fBodyAccMag.std..**  
    * Standard deviation of the magnitude of the body acceleration in the frequency domain.  
- **fBodyBodyAccJerkMag.std..**  
    * Standard deviation of the magnitude of the jerking motion of the body acceleration in the frequency domain.  
- **fBodyBodyGyroMag.std..**  
    *  Standard deviation of the magnitude of the body gyroscoopic signal in the frequency domain.  
- **fBodyBodyGyroJerkMag.std..**  
    * Standard deviation of the magnitude of the jerking motion of the body gyroscopic signal in the frequency domain.  
    

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  

####Source  
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)  
1 - Smartlab - Non-Linear Complex Systems Laboratory  
&nbsp;&nbsp;&nbsp;&nbsp;DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.  
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living  
&nbsp;&nbsp;&nbsp;&nbsp;Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain  
activityrecognition@smartlab.ws  


####References  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  

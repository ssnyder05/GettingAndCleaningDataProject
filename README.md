#README


COURSERA Data Science Specialization  
Getting and Cleaning Data, Final Project  
Author: S. Snyder, 10 Sep 16


### Components of Tidy Data
From the Getting and Cleaning Data, Week 1 lectures, the components of tidy data are:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Raw data - dataset.zip downloaded from the data website  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Tidy data - tidyData.txt output from run_analysis.R  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Code book - included as a separate file in this project  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Instruction list - run_analysis.R script  


### Data

The data for this project come from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.  
There are multiple files and directories included in this zip file. The script for this project, run_analysis.R, requires the following files:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- activity_labels.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- features.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- train/X_train.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- train/y_train.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- train/subject_train.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- test/X_test.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- test/y_test.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- test/subject_test.txt  
run_analysis.R checks to see if any of the above files (basenames) are not present in the working directory. If file(s) are missing, the script will download the data from the website, unzip it, and move the required files to the working directory overwriting any file that already exists. Any files the script puts into the working directory will be cleaned up at the end of the script.  


### Project Criteria    

The project criteria called for creating an R script that does the following.  

**1. Merge the training and the test sets to create one data set.** The original data sets had 561 features (columns). I chose to add 2 new columns to each of the training and test data sets to include the outputs (y) and subjects for each observation. Then I combined the two data sets into one large data set containing 10299 observations of 563 variables.  

**2. Extract only the measurements on the mean and standard deviation for each measurement.** I decided to include only those variable names with 'mean()' or 'std()' for the original 33 variables collected in the data set. (See the Code Book for a description of the variables.) Some of the variable names include variations of 'mean' (e.g., 'meanFreq', 'gravityMean'). However, taking the phrase 'mean and standard deviation for each measurement' literally, I chose not to include these mean measurements since there was no standard deviation measurement to go with them.  

**3. Use descriptive activity names to name the activities in the data set.** I used the file activity_labels.txt, included with the data set, to name the activities in my data set.

**4. Appropriately label the data set with descriptive variable names.** I used the file features.txt to label the variables in my data set. I decided to use the variable names exactly as they appeared in the given file, even the names appeared to have mistakes in them, e.g., 'fBodyBodyGyroMag-mean()'.

**5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.** For this, I used the melt() and dcast() functions from the reshape2 package to display averages for each activity / subject combination.  


### Running the Script  
To run the script, download it to the working directory and type the following command at the R prompt.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;> source('run_analysis.R')  

The script cleans up by deleting all downloaded files, if any, from the current working directory and all R objects created in the workspace.  

It outputs only the file tidyData.txt in the current working directory.  


### Viewing the Output  
To view the tidy data set, type the following commands at the R prompt.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;> tidyData <- read.table('./tidyData.txt', header=TRUE)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;> View(tidyData)  


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  

#### References  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  



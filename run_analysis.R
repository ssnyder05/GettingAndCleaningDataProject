# run_analysis.R
#
# This script has the code for the Getting and Cleaning Data Final Project.
# See the README file for a description of the project.
#
# The steps below are described in the README file under Project Criteria.
#
# S. Snyder, 4 September 2016

library(dplyr)
library(reshape2)


# ---------------------
# Step 0 - Set Up Data
# ---------------------

# Removed the following code block, b/c project instructions say
#   script "needs to run as long as Samsung data is in the working directory."
# # Set current working directory
# directory <- './FinalProject'
# if(!file.exists(directory)){dir.create(directory)}
# oldWd <- getwd()
# setwd(directory)

# Make sure data is in the current working directory
downloadedFiles <- FALSE
dataExists <- file.exists('./X_train.txt','./y_train.txt','./subject_train.txt',
                          './X_test.txt','./y_test.txt','./subject_test.txt',
                          './activity_labels.txt','./features.txt')
if (sum(!dataExists) != 0) {
    cat('Did not find data in current working directory, downloading. . . .\n')
    # Download data
    downloadedFiles <- TRUE
    download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
                  destfile='dataset.zip')
    # Unzip data
    cat('Unzipping data. . . .\n')
    unzip('dataset.zip')
    # Move necessary files to curr working dir
    file.rename('./UCI HAR Dataset/train/X_train.txt', 'X_train.txt')
    file.rename('./UCI HAR Dataset/train/y_train.txt', 'y_train.txt')
    file.rename('./UCI HAR Dataset/train/subject_train.txt', 'subject_train.txt')
    file.rename('./UCI HAR Dataset/test/X_test.txt', 'X_test.txt')
    file.rename('./UCI HAR Dataset/test/y_test.txt', 'y_test.txt')
    file.rename('./UCI HAR Dataset/test/subject_test.txt', 'subject_test.txt')
    file.rename('./UCI HAR Dataset/activity_labels.txt', 'activity_labels.txt')
    file.rename('./UCI HAR Dataset/features.txt', 'features.txt')
    cat('Processing dataset. . . .\n')
}

# Load data into workspace
# Data measurements:
#   X_train - 7352 obs of 561 vars      X_test - 2947 obs of 561 vars
# Activity labels:
#   y_train - 7352 obs of 1 var         y_test - 2947 obs of 1 var
# Subject labels:
#   subj_train - 7352 obs of 1 var      subj_test - 2947 obs of 1 var
X_train    <- read.table('./X_train.txt')
y_train    <- read.table('./y_train.txt')
subj_train <- read.table('./subject_train.txt')
X_test     <- read.table('./X_test.txt')
y_test     <- read.table('./y_test.txt')
subj_test  <- read.table('./subject_test.txt')


# ---------------------------------------
# Step 1 - Create One Dataset by Merging
#          Training and Test Datasets
# ---------------------------------------

# Add activity and subject labels to both datasets
#   This adds cols with names: y_train/y_test and subj_train/subj_test
X_train <- cbind(X_train, y_train, subj_train)
X_test  <- cbind(X_test, y_test, subj_test)

# Change names to match each other, so we can combine them easily
names(X_train)[(ncol(X_train)-1):ncol(X_train)] <- c('activity', 'subject')
names(X_test)[(ncol(X_test)-1):ncol(X_test)]    <- c('activity', 'subject')

# Combine training and test datasets
# This should produce a dataset with 10299 obs of 563 vars
allData <- rbind(X_train, X_test)


# -----------------------------------
# Step 3 - Use Descriptive Names to
#          Name the Activities in
#          the Dataset
# -----------------------------------

# Read in file of activity names
actNames <- read.table('./activity_labels.txt', header=FALSE, row.names=1)

# Convert these activity names from factors to char strings
actNames <- levels(actNames$V2)[actNames$V2]

# Convert dataset activity values to factors
allData$activity <- factor(allData$activity, levels=1:length(actNames), labels=actNames)


# ------------------------------------
# Step 4 - Label the dataset with
#          descriptive variable names
# ------------------------------------

# Read in file of variable names
varNames <- read.table('./features.txt', header=FALSE, row.names=1)

# Convert these var names from factors to char strings
varNames <- levels(varNames$V2)[varNames$V2]

# Change all names to rowNum_varName, b/c there are duplicate names in the file
varNames <- lapply(seq_along(varNames), function(x,i) paste0(i, '_', x[[i]]), x=varNames)

# Change variable names in the complete dataset to these new names
names(allData)[1:561] <- varNames[1:561]


# -----------------------------------------
# Step 2 - Extract only measurements for 
#          the mean and standard deviation
#          for each measurement
# -----------------------------------------

# Extract columns with 'mean()' or 'std()' in the var names
#   (also include the activity and subject cols)
#   This should produce a dataset with 10299 obs of 66+2 vars
subData <- select(allData, grep('mean()', names(allData), fixed=TRUE),
                  grep('std()', names(allData), fixed=TRUE), activity, subject)
 

# ------------------------------------------
# Step 5 - Create new (tidy) dataset that
#          has average of each variable for  
#          each activity and each subject
# ------------------------------------------

# Set up list of vars to group averages by
#   (used as 'id.vars' in 'melt' command)
ids <- c('activity', 'subject')

# Reshape the dataset and compute the mean
#   (blank measurement.vars in melt uses all non-id variables)
meanData <- melt(subData, id.vars=ids) %>%
            dcast(activity+subject ~ variable, mean)

# Remove the 'X_#' prefix on the variable names
names(meanData) <- sub('X[0-9]+_', '', names(meanData))

# Save tidy dataset
write.table(meanData, file='tidyData.txt', row.names=FALSE)


# ---------
# Clean-up
# ---------

# # Change back to original working directory
# setwd(oldWd)

# If dataset was downloaded at beginning of this script,
#   remove the files copied to the current working directory
if (downloadedFiles) {
    file.remove('./X_train.txt','./y_train.txt','./subject_train.txt',
                './X_test.txt','./y_test.txt','./subject_test.txt',
                './activity_labels.txt','./features.txt')
    file.remove('./dataset.zip')
    unlink('./UCI HAR Dataset', recursive=TRUE)
}

# Remove all data read in from files
rm(subj_test, subj_train, X_test, X_train, y_test, y_train)
# Remove misc computed data
rm(allData, subData, meanData)
# Remove label files
rm(actNames, varNames)
# Remove misc vars
rm(ids, downloadedFiles, dataExists)


# end run_analysis.R

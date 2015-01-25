## Coursera - Data Science Specialization
## Getting and Cleaning Data - Jan 2015
## Course Project

## File name: read_data.R
## All the data files are read from here and the resulting variables/data structures
## necessary for the tidy data set will be imported into run_analysis.R

## It is assumed that the zip file provided in the project page has been downloaded
## without corruption to the working directory (in which both scripts reside)
## and unzipped without modification

## CONSTANTS

FILE_SEP <- .Platform$file.sep
BASE_DIR <- "UCI HAR Dataset"
TEST_DIR <- paste(BASE_DIR, "test", sep = FILE_SEP)
TRAIN_DIR <- paste(BASE_DIR, "train", sep = FILE_SEP)

## READING DATA

### Retreieve actvities and variable names
act_labels <- read.table(paste(BASE_DIR, "activity_labels.txt", sep = FILE_SEP), sep = " ")[, 2] %>%
    as.character

var_names <- read.table(paste(BASE_DIR, "features.txt", sep = FILE_SEP), sep = " ")[, 2] %>%
    as.character %>%
    append(values = c("Subject", "Activity"), after = 0)

#### train directory
x_train <- read.table(paste(TRAIN_DIR, "X_train.txt", sep = FILE_SEP))
y_train <- read.table(paste(TRAIN_DIR, "y_train.txt", sep = FILE_SEP))[, 1]   
sub_train <- read.table(paste(TRAIN_DIR, "subject_train.txt", sep = FILE_SEP))
## Convert vector of integers into corresponding activities
y_train <- act_labels[y_train] 


#### test directory
x_test <- read.table(paste(TEST_DIR, "X_test.txt", sep = FILE_SEP))
y_test <- read.table(paste(TEST_DIR, "y_test.txt", sep = FILE_SEP))[, 1]
y_test <- act_labels[y_test]
sub_test <- read.table(paste(TEST_DIR, "subject_test.txt", sep = FILE_SEP))

---
title: "Code Book"
author: "Me"
---

### A brief explanation of the code flow

1. Execution begins with `run_analysis.R`. Data is read, training and test separately, by `read_data.R`, which is invoked from within.

2. The training data set is formed by column-wise combination of the subject, activity, and the corresponding data. Similarly for the test data.

3. These two data sets are then combined row-wise.

4. All the column names which contain either the strings "mean" or "std" are filtered for the final data set. This dataframe now contains a column for subject, one for activity, and 79 columns for different measurements (one per column). Each row corresponds to the observations of these 81 quanties while one subject was performing one activity.

5. This data set is grouped, first by subject and then by activity. This in turn is used to calculate the average value of each variable (column) corresponding to each activity performed by each subject.

6. For clarity, the column names with the measuremens are prefixed with "avg_" to denote that they are the average values of the quantities.

7. Finally this (tidy) data set is written to a text file.


### The Variables

The list of variables featured in the final tidy data set are provided below. 'Subject' refers to the persons (denoted using numbers 1 to 6) who performed the activities. 'Activity' refers to the six physical activities performed by each subject: laying, sitting, standing, walking, walking downstairs, and walking upstairs. The rest of the columns contain the average values of different measures obtained from the devices worn by the subjects. Each row provides these average values for a single subject performing only one activity.

Subject  
Activity  
avg_tBodyAcc-mean()-X  
avg_tBodyAcc-mean()-Y  
avg_tBodyAcc-mean()-Z  
avg_tBodyAcc-std()-X  
avg_tBodyAcc-std()-Y  
avg_tBodyAcc-std()-Z  
avg_tGravityAcc-mean()-X  
avg_tGravityAcc-mean()-Y  
avg_tGravityAcc-mean()-Z  
avg_tGravityAcc-std()-X  
avg_tGravityAcc-std()-Y  
avg_tGravityAcc-std()-Z  
avg_tBodyAccJerk-mean()-X  
avg_tBodyAccJerk-mean()-Y  
avg_tBodyAccJerk-mean()-Z  
avg_tBodyAccJerk-std()-X  
avg_tBodyAccJerk-std()-Y  
avg_tBodyAccJerk-std()-Z  
avg_tBodyGyro-mean()-X  
avg_tBodyGyro-mean()-Y  
avg_tBodyGyro-mean()-Z  
avg_tBodyGyro-std()-X  
avg_tBodyGyro-std()-Y  
avg_tBodyGyro-std()-Z  
avg_tBodyGyroJerk-mean()-X  
avg_tBodyGyroJerk-mean()-Y  
avg_tBodyGyroJerk-mean()-Z  
avg_tBodyGyroJerk-std()-X  
avg_tBodyGyroJerk-std()-Y  
avg_tBodyGyroJerk-std()-Z  
avg_tBodyAccMag-mean()  
avg_tBodyAccMag-std()  
avg_tGravityAccMag-mean()  
avg_tGravityAccMag-std()  
avg_tBodyAccJerkMag-mean()  
avg_tBodyAccJerkMag-std()  
avg_tBodyGyroMag-mean()  
avg_tBodyGyroMag-std()  
avg_tBodyGyroJerkMag-mean()  
avg_tBodyGyroJerkMag-std()  
avg_fBodyAcc-mean()-X  
avg_fBodyAcc-mean()-Y  
avg_fBodyAcc-mean()-Z  
avg_fBodyAcc-std()-X  
avg_fBodyAcc-std()-Y  
avg_fBodyAcc-std()-Z  
avg_fBodyAcc-meanFreq()-X  
avg_fBodyAcc-meanFreq()-Y  
avg_fBodyAcc-meanFreq()-Z  
avg_fBodyAccJerk-mean()-X  
avg_fBodyAccJerk-mean()-Y  
avg_fBodyAccJerk-mean()-Z  
avg_fBodyAccJerk-std()-X  
avg_fBodyAccJerk-std()-Y  
avg_fBodyAccJerk-std()-Z  
avg_fBodyAccJerk-meanFreq()-X  
avg_fBodyAccJerk-meanFreq()-Y  
avg_fBodyAccJerk-meanFreq()-Z  
avg_fBodyGyro-mean()-X  
avg_fBodyGyro-mean()-Y  
avg_fBodyGyro-mean()-Z  
avg_fBodyGyro-std()-X  
avg_fBodyGyro-std()-Y  
avg_fBodyGyro-std()-Z  
avg_fBodyGyro-meanFreq()-X  
avg_fBodyGyro-meanFreq()-Y  
avg_fBodyGyro-meanFreq()-Z  
avg_fBodyAccMag-mean()  
avg_fBodyAccMag-std()  
avg_fBodyAccMag-meanFreq()  
avg_fBodyBodyAccJerkMag-mean()  
avg_fBodyBodyAccJerkMag-std()  
avg_fBodyBodyAccJerkMag-meanFreq()  
avg_fBodyBodyGyroMag-mean()  
avg_fBodyBodyGyroMag-std()  
avg_fBodyBodyGyroMag-meanFreq()  
avg_fBodyBodyGyroJerkMag-mean()  
avg_fBodyBodyGyroJerkMag-std()  
avg_fBodyBodyGyroJerkMag-meanFreq()  

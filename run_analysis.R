## Coursera - Data Science Specialization
## Getting and Cleaning Data - Jan 2015
## Course Project

## File name: run_analysis.R

## IMPORTANT: It is assumed that both read_data.R and this file 
## are in the same directory along with the data.

## Execution starts here.

library(dplyr)

source("read_data.R")

## Binding columns - test and train separately, and then binding resulting frames
## Bind order: Subject - Activity - Data (column-wise) | Train - Test (row-wise)
## Column names applied separately to Train and Test data sets

train_merged <- cbind(sub_train, y_train, x_train)
names(train_merged) <- var_names

test_merged <- cbind(sub_test, y_test, x_test)
names(test_merged) <- var_names

merged_data <- tbl_df(rbind(train_merged, test_merged))

## Select columns relating to Mean and Std. Dev.
## Create tidy data set with mean of each column for each activity
## ordered by subject

tidy_set <- merged_data[grep("Subject|Activity|mean|std", var_names)] %>%
    group_by(Subject, Activity) %>%
    summarise_each(funs(mean))

## A bit of cleaning up...
print("Cleaning environment of unnecessary variables and data frames...")
rm(x_train, x_test, y_train, y_test, sub_train, sub_test, act_labels, var_names,
   train_merged, test_merged, merged_data)
print("Done")

## Rename column names: Except the first two all column names are pre-fixed with "avg_"
names(tidy_set) <- sub("^", "avg_", names(tidy_set))
names(tidy_set) <- sub("^avg_Subject$", "Subject", names(tidy_set))
names(tidy_set) <- sub("^avg_Activity$", "Activity", names(tidy_set))


## Write data to text file - stored in the working directory
write.table(tidy_set, "Get_Data_Tidy_Set.txt", row.names = FALSE)
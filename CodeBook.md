---
title: "Code Book"
author: "Me"
---

### A brief explanation of the code flow

1. Execution begins with `run_analysis.R`. Data is read, training and test data separately, by the `read_data.R` which is invoked from within.

2. The training data set is formed by column-wise combination of the subject, activity, and the         corresponding data. Similarly for the test data.

3. These two data sets are then combined row-wise.

4. All the column names which contain either the strings "mean" or "std" are filtered for the final data set. This dataframe now contains a column for subject, one for activity, and 81 separate columns for different measurements (one per column). Each row corresponds to the observations of these 81 quanties while one subject was performing one activity.

5. This data set is grouped, first by subject and then by activity. This in turn is used to calculate the average value of each variable (column) corresponding to each activity performed by each subject.

6. For clarity, the column names are prefixed with "avg_" to denote that they are the average values of the quantities.

7. Finally this (tidy) data set is written to a text file.


### The Variables

I hope you'll understand that I don't wish to make a fool of myself by trying to describe things about which I'm not knowledgeable, namely the variables in the data set, beyond what is already available in the file `features_info.txt`. The first chunk of text in the uploaded txt file lists all the variables, and I have tried my best to describe how those came about in points 4 and 5 above.



# Course Assignment
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the data for the project:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  You should create one R script called run_analysis.R that does the following. Merges the training and the test sets to create one data set.Extracts only the measurements on the mean and standard deviation for each measurement. Uses descriptive activity names to name the activities in the data setAppropriately labels the data set with descriptive variable names. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Steps In Analysis (reflected in run_analysis.R code)
1. Create directory to store the data sets used in analysis.
2. Download file from online location and unzip files into directory.
3. Read in training and test data sets (X, y, and Subject_test files).
4. Read in feature names and activity labels tables (renames to create common variables for merges).
5. Join subject train and test data together (renames to create common variables for merges).
6. Join X train and test data together. 
7. Use grep to find all column names with mean or std in features data.  Apply the resulting vector of matches to the joined X training    and test data to ensure descriptive names and retain only those columns.
8. Use make.names and series of gsub statements to create more descriptive names (leveraging the information in the README.txt and          features_info.txt).
9. Join y train and test data together (rename to create common variables for merges).
10. Join X data, y data, and subject data together.
11. Merge data with information from activity_labels to generate descriptive activities in final data.  Reorder columns for ease of         reading.
12. Write out full joined data set for all subjects to working directory (full merged data set.txt).
13. Use group_by and summarise to create tidy data set with summarized mean data for each subject by activity.
14. Write out tidy data set in text format to working directory.

# Steps Necessary to Run Code
1.  Uncomment working directory line at line 4 of run_analysis.R code and set working directory to desired location on your drives.

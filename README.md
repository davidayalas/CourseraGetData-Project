Getting and Cleaning Data - Course Project  
===========================================

This is the project assignement from the Coursera course [Getting and Cleaning Data](https://www.coursera.org/course/getdata)

* Dataset analyzed: "Human Activity Recognition Using Smartphones" [(download)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* R Script to run: run_analysis.R

Installation
-------------

1) Unzip and save the directory "UCI HAR Dataset" (or the name of your choose) in your disk

2) Download the run_analysis.R script to your computer. Modify the "srcpath" variable in the first line of the script if the script isn't downloaded into the root of the directory of step 1.

3) Execute the script "Rscript run_analysis.R" [(download)](https://raw.githubusercontent.com/davidayalas/CourseraGetData-Project/master/run_analysis.R)

How it works
-------------

1) The analyzed data is divided into two categories: test data and train data, each one with 3 text files (X data, Y data and Subject data)

2) The script merges this data to get one full dataset to work with and labels the activity with the right description (from "activity_labels.txt") 

3) With the full dataset, we only need those columns that reference to variables with mean or standard deviation values. To do this, the script reads the "features.txt", select the names with "mean()" or "std()" string to subset the full dataset from step 2.

4) The script also modifies the new dataset column names to make them more readables.

5) Finally the script makes an aggregation (mean) of the data by "Subject" and "Activity" (then, we get a dataset with only one record by subject and activity) and saves it to a text file named "tidy.txt" in the "scrpath" defined previously. 

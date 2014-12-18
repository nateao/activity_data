---
title: "Getting and Cleaning Data Coursera Final Project"
output: html_document
---

This is the final project for the December 2014 Coursera Getting and Cleaning Data course, which is part of the Johns Hopkins Data Science specialization.

## Project Description

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data were obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To complete this project, a script with filename run_analysis.R has been written which does the following (note that my script performs the tasks in a slightly different order than the assignment prescribes).

  1. Merges the training and the test sets to create one data set.
  2. Appropriately labels the data set with descriptive variable names.
  3. Extracts only the measurements on the mean and standard deviation for each measurement. 
  4. Uses descriptive activity names to name the activities in the data set.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each           variable for each activity and each subject.
  
## Files in this Repository

  * **README.md** - Describes the purpose and contents of this repository.
  * **run_analysis.R** - Script to create the tidy data set as described above.
  * **activity_data_tidy.txt** - The tidy data set created by run_analysis.R.
  * **CodeBook.md** - describes the variables, the data, and any transformations or work performed to clean up the raw data

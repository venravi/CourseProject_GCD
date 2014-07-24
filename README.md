CourseProject_GCD
=================

##Introduction

This repository contains a tidy data set (named dataSet.txt), the script (run_analysis.R) to get it, and a CodeBook (CodeBook.md) with the explanation of
the data set variables and framework.

The script transforms and summarizes original data collected from an experiment with the accelerometers of the Samsung Galaxy S smartphone. A full
description of this data is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



##run_analysis.R

Although specific commentaries are inserted in the code, these are overall commentaries to understand the script (please notice that all the script can
be directly run, regardless which your working directory is):

* <b>Script1</b>: the original data is divided in training and testing data. Each of them contains different txt files for the subject ID, 561 attributes
with time and frequency domain variables, and the activity label (walking, walking_upstairs, walking_downstairs, sitting, standing and laying).
This script merges this information. First of all, the subject ID, the activity label and the 561 attributes have been merged for both the Training and
Testing data (resulting both of them in 563 variables). Secondly, the 2947 observations of the testing data have been added to the 7352 of the training
data. The resulting merge contains 10299 observations and 563 variables.

* <b>Script2</b>: the original 561 attributes contains a lot of information. This script extracts only the attributes that contain the mean and standard
deviation for the measurements (the CodeBook specifies what each variable represents).
Note: when extracting the measurements on the mean and standard deviation, meanFreq is not included.

* <b>Script3</b>: this script recodes the activity variable values with their descriptive names.
Note: the descriptive activity names are literally the ones provided in activity_labels.txt, to avoid that other people who access to the original data
get confused.

* <b>Script4</b>: this script appropriately labels the data set with descriptive variable names. Due to the length of the names, I used Camelcase. All are
 human readable characters (no ()s or -s), although some abbreviations are used because of the length of the names and the availability of the CodeBook.
 
 * <b>Script5</b>: this script leads to the dataSet.txt output (the tidy data set). It contains the average (mean) of each variable for each activity and
subject combination. The first column is the activity type, followed by the subject ID (six types of activities, each of them with 30 records).
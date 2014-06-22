Getting and Cleaning Data course project
========================================

The R script "run_analysis.R" in this repository depends on:

1. Unzipped database from
   http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
2. Package "plyr" within "R"

After downloading the script one is supposed to source it and, while the working
directory is set to the directory containing "UCI HAR Dataset", run function
"run_analysis()". Its output would contain a tidy data set as it was defined
in the task for this course project.

All the processing happens inside function "run_analysis()".

At first it defines top level directory with the original data set and two
auxiliary functions to produce full path to files with data.

Next it reads two dictionary files with the activity names and features names.
For the latter it extracts indexes of column names containing "-mean()",
"-meanFreq()" or "-std()". I believe that only these names are valid because
they represent functions described in step 2 of the task for the course
project: "Extracts only the measurements on the mean and standard deviation for
each measurement". "-meanFreq()" shows weighted average and it is still
a mean as there is no precise definition for it in the task.

Next the function removes "()" and replaces "-" with "." from the names to
simplify using them in any further data processing.

After that an another auxiliary function is defined for refining
interim data sets. For a specific data set it loads three files with:

 - data itself
 - corresponding subjects for each row
 - corresponding activity for each row

For the latter it converts all the numeric indexes of activity to the
corresponding names. For the data it assigns a name for every column.
The result operator combines all three data frames along with subsetting
only significant columns from the data.

The rest is simple. It loads "test" data set, then "train" data set, gets them
together by "rbind" and applies "ddply" along with "numcolwise(mean)" for each
column of each subset within distinct group "activity" and "subject".

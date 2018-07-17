## Getting and Cleaning Data Assignment README

This package is designed to refine and summarise data from samsung's fitness activity dataset

### Quickstart guide:
-> Download this repository 'Getting and Cleaning Data Assignment' from github.com/jordanjamessands/getting-and-cleaning-data-assignment

-> set working directory to the 'getting-and-cleaning-data-assignment' directory

-> For part 1, run: 'run_analysis.R'

-> See summary_table.txt for part 2 or run: 'part2.R'

### run_analysis_library

combine subject, activity and summaryStatistics datasets

combineData <- function(dirName)


Returns the list of feature names for use in the data header

X_data_header <- function()


pass a filename of ' '+ separated values, returns a dataframe of those values

process_text <- function(textFileName)


calls for collection of test and train datasets then combines them

mergeDataSets <- function()


Given a directory, name of data (test or train) and a potential header to attach, 
reads in data from the dataset

get_data <- function(dirName,dataName,header=NULL)


Given a data.frame with an activityID column, converts the data.frame to one with an 'activity' column  

prettify_activity <- function(df)


Remove any columns that aren't mean or std, (except for subjectID and activity columns)

cullData <- function(df)


Clean the variable names making them simple to read

prettify_vars <- function(df)


further clean variable names

reprocess_var_names <- function(names,dimString)


create name vector for summary data.frame in question 5, adding 'ave_' in front of everything

reprocess_names <- function(df)

#load run_analysis_library.R
source('run_analysis_library.R')

prevDir <- getwd()

#set wd to inside the dataset
setwd('UCI HAR Dataset')

#Questions 1-4
refined_data <- 
    mergeDataSets() %>%
    cullData %>%
    prettify_vars

#return to the original working directory
setwd(prevDir)
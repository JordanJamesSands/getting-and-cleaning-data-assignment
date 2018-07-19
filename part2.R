# source run_analysis_library.R to the global environment before running


prevDir <- getwd()

#set wd to inside the dataset
setwd('UCI HAR Dataset')

#Question 5
summary_tbl <-
    tbl_df(refined_data) %>%
    group_by(subjectID,activity) %>%
    summarise_all(funs(mean)) %>%
    reprocess_names


#return to the original working directory
setwd(prevDir)

write.table(summary_tbl,file='summary_table.txt',row.names = FALSE)
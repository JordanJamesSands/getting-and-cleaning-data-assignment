library(dplyr)
library(stringr)

#combine subject, activity and summaryStatistics datasets
combineData <- function(dirName) {
    #subject data address
    subject_data <- get_data(dirName,'subject','subjectID')
    #summary statistics data address
    X_data <- get_data(dirName,'X',X_data_header())
    #activity data address
    y_data <- get_data(dirName,'y','activityID')
    
    #combine data to a single data.frame, convert activity IDs to activity names and return
    cbind(subject_data,y_data,X_data) %>%
        prettify_activity
}

#Returns the list of feature names for use in the data header
X_data_header <- function() {
    f <- file('features.txt')
    rawStrings <- readLines(f)
    close(f)
    
    header <- tolower(rawStrings)
    return(header)
}


#pass a filename of ' '+ separated values, returns a dataframe of those values
process_text <- function(textFileName) {
    f <- file(textFileName)
    raw_txt <- readLines(f)
    close(f)
    
    #remove whitespace at start/end
    cleaned_txt <- str_trim(raw_txt)
    
    #Convert "  " and " " to ","
    csv_txt <- gsub('  ',',',cleaned_txt)
    csv_txt <- gsub(' ',',',csv_txt)
    
    #return a data frame
    read.table(text=csv_txt,sep=',',header=FALSE)
}

#calls for collection of test and train datasets then combines them
mergeDataSets <- function() {
    testData <- combineData('test')
    trainData <- combineData('train')
    rbind(testData,trainData)
}


get_data <- function(dirName,dataName,header=NULL) {
    dataFilename <- paste(dataName,'_',dirName,'.txt',sep='')
    dataAddress <- paste(dirName,dataFilename,sep='\\')
    data <- process_text(dataAddress)
    
    if(!is.null(header)) {
        names(data) <- header
    }
    data
}

#Given a data.frame with an activityID column, converts the data.frame to one with an 'activity' column  
prettify_activity <- function(df) {
    f <- file('activity_labels.txt')
    raw <- readLines(f)
    close(f)
    labels <- gsub('\\d+ ','',raw)
    df$activityID <- factor(df$activityID,labels=labels)
    rename(df,activity=activityID)
}

#Remove any columns that aren't mean or std, (except for subjectID and activity columns)
cullData <- function(df) {
    names <- names(df)
    #vector of indicies where mean/std columns exist
    mean_std_cols <- which((grepl('mean\\(\\)',names) | grepl('std\\(\\)',names)))
    
    #Add in the 1st 2 indicies to include subjectID and activity in the refined dataset
    relevant_cols <- c(1,2,mean_std_cols)
    
    #Return only the relevant variables
    select(df,relevant_cols)
}

#Clean the variable names making them simple to read
prettify_vars <- function(df) {
    names <- names(df)
    
    #remove digits at the start of names
    processing <- gsub('^[0-9]+ ','',names)
    #Remove unsighlty '()'
    processing <- gsub('\\(\\)','',processing)
    #convert hyphens to underscores
    processed <- gsub('-','_',processing)
    
    #assign new variable names and return
    names(df) <- processed
    return(df)
}

#create name vector for summary data.frame in question 5, adding 'ave_' in front of everything
reprocess_names <- function(df) {
    names <- names(df)
    names(df) <- lapply(names,function(x) {paste('ave_',x,sep='')})
    return(df)
}

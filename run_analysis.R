#Global variables for data locations, features and activities
data_dir = "./data"
data_source_dir = paste0(data_dir, "/", "UCI HAR Dataset")
features_df <- read.table(paste0(data_source_dir, "/", "features.txt"))
activity_labels_df <- read.table(paste0(data_source_dir, "/", "activity_labels.txt"), col.names = c("activity_code", "activity_label"))

#Download and unpack source data
get_data <- function() {
  
  data_source_url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  data_zip_file = "Dataset.zip"
  
  if(!file.exists(data_dir)) {dir.create(data_dir)}
  
  download.file(data_source_url, destfile = paste0(data_dir, "/", data_zip_file), method = "curl")
  unzip(paste0(data_dir, "/", data_zip_file), exdir = data_dir)
  
}

#Process the test data set to create a data frame of the mean and std deviation variables by activity and subject
get_test_data <- function() {
  data_source_dir_test = paste0(data_source_dir, "/", "test")

  #Get the test data set, extract only the columns that are means or stds and combine with subjects and activities
  x_test_df <- read.table(paste0(data_source_dir_test, "/", "X_test.txt"), col.names = features_df[,2])
  
  x_test_df <- x_test_df[, grepl("*mean|*std", names(x_test_df))]
  
  subjects_test_df <- read.table(paste0(data_source_dir_test, "/", "subject_test.txt"), col.names = "subject")
  
  x_test_df <- cbind(subjects_test_df, x_test_df)
  
  activity_code_test_df <- read.table(paste0(data_source_dir_test, "/", "y_test.txt"), col.names = "activity")
  
  activity_code_test_df$activity <- activity_labels_df[match(activity_code_test_df$activity, activity_labels_df$activity_code), 2]
  
  x_test_df <- cbind(activity_code_test_df, x_test_df)
  
  tidy_names(x_test_df)
}

#Process the training data set to create a data frame of the mean and std deviation variables by activity and subject
get_train_data <- function() {
  data_source_dir_train = paste0(data_source_dir, "/", "train")
  
  #Get the training data set, extract only the columns that are means or stds and combine with subjects and activities  
  x_train_df <- read.table(paste0(data_source_dir_train, "/", "X_train.txt"), col.names = features_df[,2])
  
  x_train_df <- x_train_df[, grepl("*mean|*std", names(x_train_df))]
  
  subjects_train_df <- read.table(paste0(data_source_dir_train, "/", "subject_train.txt"), col.names = "subject")
  
  x_train_df <- cbind(subjects_train_df, x_train_df)
  
  activity_code_train_df <- read.table(paste0(data_source_dir_train, "/", "y_train.txt"), col.names = "activity")
  
  activity_code_train_df$activity <- activity_labels_df[match(activity_code_train_df$activity, activity_labels_df$activity_code), 2]
  
  x_train_df <- cbind(activity_code_train_df, x_train_df)
  
  tidy_names(x_train_df)
}

#Merge, group and summarise the merged data set
run_analysis <- function() {
  
  merged_data_df <- merge(get_test_data(), get_train_data(), all = TRUE)

  merged_data_tbl <- tbl_df(merged_data_df)  
  grouped_data_tbl <- group_by(merged_data_tbl, activity, subject)
  summarised_data_tbl <- summarise_each(grouped_data_tbl, funs(mean))
}

#Tidy names by converting to lower case, replacing "."s and "..."s, with "_" and ".." with "-"
tidy_names <- function(df) {
  #Make names all lower case
  names(df) <- tolower(names(df))
  
  #Replace "..." with "_"
  names(df) <- sub("\\.\\.\\.", "_", names(df))
  
  #Replace ".." with nothing, i.e. remove them
  names(df) <- sub("\\.\\.", "", names(df))
  
  #Replace "." woth "_"
  names(df) <- sub("\\.", "_", names(df))
  
  df
}

write.table(run_analysis(), "summarised_data_tbl.txt", row.name=FALSE)

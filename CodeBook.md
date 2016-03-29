This is the codebook for the summarised data set. The original data is
here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- activity

One of:

  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

- subject

Numeric identifier for subject.

- Mean feature values grouped by activity and subject

The colunms after the subject are feature values as listed below. Each feature value is the mean value,
grouped by activity and subject.

The names are based on those explained in the "features_info.txt" and
"features.txt" files in the original data set, with the following transformations:

 - All characters are lower case
 - All "-"s and "_"s
 - "()"s have been removed

  - tbodyacc_mean_x
  - tbodyacc_mean_y
  - tbodyacc_mean_z
  - tbodyacc_std_x
  - tbodyacc_std_y
  - tbodyacc_std_z
  - tgravityacc_mean_x
  - tgravityacc_mean_y
  - tgravityacc_mean_z
  - tgravityacc_std_x
  - tgravityacc_std_y
  - tgravityacc_std_z
  - tbodyaccjerk_mean_x
  - tbodyaccjerk_mean_y
  - tbodyaccjerk_mean_z
  - tbodyaccjerk_std_x
  - tbodyaccjerk_std_y
  - tbodyaccjerk_std_z
  - tbodygyro_mean_x
  - tbodygyro_mean_y
  - tbodygyro_mean_z
  - tbodygyro_std_x
  - tbodygyro_std_y
  - tbodygyro_std_z
  - tbodygyrojerk_mean_x
  - tbodygyrojerk_mean_y
  - tbodygyrojerk_mean_z
  - tbodygyrojerk_std_x
  - tbodygyrojerk_std_y
  - tbodygyrojerk_std_z
  - tbodyaccmag_mean
  - tbodyaccmag_std
  - tgravityaccmag_mean
  - tgravityaccmag_std
  - tbodyaccjerkmag_mean
  - tbodyaccjerkmag_std
  - tbodygyromag_mean
  - tbodygyromag_std
  - tbodygyrojerkmag_mean
  - tbodygyrojerkmag_std
  - fbodyacc_mean_x
  - fbodyacc_mean_y
  - fbodyacc_mean_z
  - fbodyacc_std_x
  - fbodyacc_std_y
  - fbodyacc_std_z
  - fbodyacc_meanfreq_x
  - fbodyacc_meanfreq_y
  - fbodyacc_meanfreq_z
  - fbodyaccjerk_mean_x
  - fbodyaccjerk_mean_y
  - fbodyaccjerk_mean_z
  - fbodyaccjerk_std_x
  - fbodyaccjerk_std_y
  - fbodyaccjerk_std_z
  - fbodyaccjerk_meanfreq_x
  - fbodyaccjerk_meanfreq_y
  - fbodyaccjerk_meanfreq_z
  - fbodygyro_mean_x
  - fbodygyro_mean_y
  - fbodygyro_mean_z
  - fbodygyro_std_x
  - fbodygyro_std_y
  - fbodygyro_std_z
  - fbodygyro_meanfreq_x
  - fbodygyro_meanfreq_y
  - fbodygyro_meanfreq_z
  - fbodyaccmag_mean
  - fbodyaccmag_std
  - fbodyaccmag_meanfreq
  - fbodybodyaccjerkmag_mean
  - fbodybodyaccjerkmag_std
  - bodybodyaccjerkmag_meanfreq
  - fbodybodygyromag_mean
  - fbodybodygyromag_std
  - fbodybodygyromag_meanfreq
  - fbodybodygyrojerkmag_mean
  - fbodybodygyrojerkmag_std
  - fbodybodygyrojerkmag_meanfreq

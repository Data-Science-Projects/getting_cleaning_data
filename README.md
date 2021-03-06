# Getting and Cleaning Data Course Project Assignment

The codebook for the summarised data set is in the [CodeBook.md](./CodeBook.md) file.

The R script that processes the data is in the [run_analysis.R](./run_analysis.R) file.

The main function of the script is `run_analysis()`, and can be used as illustrated below:

```
source("run_analysis.R")
summarised_data_tbl <- run_analysis()
```

The processing stages in the [run_analysis.R](./run_analysis.R) script are as follows:

- Define variables for data locations
- Download and unpack source data
- Process the test data set to create a data frame of the mean and std deviation variables by activity and subject
- Process the training data set to create a data frame of the mean and std deviation variables by activity and subject
- Merge, group and summarise the merged data set
- Write the summarised data set to a file called "summarised_data_tbl.txt" with row.name=FALSE

This project uses a data set with these license requirements:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

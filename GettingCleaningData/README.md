### Overview
This file explains how [run_analysis.R](https://github.com/edithbeen/CourseraCourses/blob/master/GettingCleaningData/run_analysis.R) under the same directory works. 

### Running Environment
The file can be opened and run by R later than version 3.1.2. A detailed description of R can be found in http://cran.us.r-project.org/. 

### Working Directory
The setting of working directory is optional. It can be achieved by uncomment the first line of the R code, and change the working directory on the local address, or it will use the default working directory of R. Please note the code would download and unzip a data set from UCI Machine Learning Repository (optional, can be performed manually), and output a aggregated txt data set into the working directory. 

### Package Information
This file require `dplyr` and `data.table` packages. Please note the versions of the packages are critical to the success of the run, especially that of the second package. Please reinstall the `data.table` package if the version is earlier than 1.9.6.  

### Data Analysis Procedure
Applying R, the [run_analysis.R](https://github.com/edithbeen/CourseraCourses/blob/master/GettingCleaningData/run_analysis.R) did the following to get the tidy data:

1. Download the data and unzip it in the working directory (optional to run). A detailed description of the data set the variables is available through [CodeBook.md](https://github.com/edithbeen/CourseraCourses/blob/master/GettingCleaningData/CodeBook.md). 

2. Read all the data including the subject ID, activity type, and the 561 derived features into one data set (called `data.all`, stored as a data.table data frame), combining both the test and training data set. 

3. Change the activity labels of the combined data set. 

4. Change the column names of the combined data set.

5. Extract the columns representing the subject ID, activity type, and those features that are the means and standard deviations of the signals (columns whole names contain "mean()" or "std()", a total of 2 + 66 = 68 columns). 

6. Aggregate the data set (called `data.agg`) using mean function and group by subject ID and activity type. 

7. Output the aggregated data set in the working directory as `tidy_data_mean.txt` (180 rows, 68 columns). 





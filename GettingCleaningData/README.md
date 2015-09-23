#### Overview
This file explains how **run_analysis.R** under the same directory works. 

#### Running Environment
The file can be opened and run by R later than version 3.1.2. A detailed description of R can be found in http://cran.us.r-project.org/. 

#### Working Directory
The setting of working directory is optional. It can be achieved by uncomment the first line of the R code, and change the working directory on the local address, or it will use the default working directory of R. Please note the code would download and unzip a data set from UCI Machine Learning Repository (optional, can be performed manually), and output a aggregated txt data set into the working directory. 

#### Package Information
This file require `dplyr` and `data.table` packages. Please note the versions of the packages are critical to the success of the run, especially that of the second package. Please reinstall the `data.table` package if the version is earlier than 1.9.6.  

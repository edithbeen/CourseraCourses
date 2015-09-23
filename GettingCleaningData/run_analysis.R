# get and set the working directory
# setwd("D:/Programming Study/R/data cleaning")
wd = getwd()
setwd(wd)


# load the packages
### IMPORTANT: Make sure to have the latest data.table package (after Version 1.9.6)!!!
install.packages("data.table")
library(data.table)
library(dplyr)

# download and extract the data, if you have already done so, set the working directory to be 
# the parent directory of "UCI HAR Dataset"
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "human.zip")
unzip the files
unzip("human.zip")

# read the data into R
folderName = "UCI HAR Dataset"
subFolderName = c("test", "train")
# merge all the test and training data into one data set: data.all
data.all = NULL
### IMPORTANT: Make sure to have the latest data.table package (after Version 1.9.6)!!!
for (i in 1:2){
  dir.i = file.path(wd, folderName, subFolderName[i])
  tbl.i.subject = fread(file.path(dir.i, paste0("subject_", subFolderName[i], ".txt")), sep = " ")
  tbl.i.obs = fread(file.path(dir.i, paste0("X_", subFolderName[i], ".txt")), sep = " ")
  tbl.i.activity = fread(file.path(dir.i, paste0("Y_", subFolderName[i], ".txt")), sep = " ")
  tbl.i = cbind(tbl.i.subject, tbl.i.activity, tbl.i.obs)
  colnames(tbl.i)[1:2] = c("subjectID", "activity")
  data.all = rbind(data.all, copy(tbl.i))
}

# change the activity labels
activityLabels = read.table(file.path(wd, folderName, "activity_labels.txt"), sep = " ")$V2
data.all$activity = factor(data.all$activity, 
                              labels = activityLabels)
# change the colnames of the data set
colNames = read.table(file.path(wd, folderName, "features.txt"), stringsAsFactors = F)$V2
colnames(data.all)[-c(1, 2)] = colNames

# now select the columns to aggregate, only the columns whose names contain mean() or std()
# would be included
data.chosen = data.all[, c(1:2, grep("mean[()]|std[()]", colNames) + 2), with = F]

# aggregation table, mean group by subject and activity
by_sub_act = group_by(data.chosen, subjectID, activity)
data.agg = by_sub_act %>% summarise_each(funs(mean))

# write the output in the working directory
write.table(data.agg, "tidy_data_mean.txt", row.name = F)

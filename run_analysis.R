library(dplyr)

#Set working directory for files
#setwd("C:/Coursera")

# Create directory for the UCI data 
if (!file.exists("./data")) {dir.create("./data")} 

# Download file from location
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
f <- "./data/Course 3 Project.zip" 
if (!file.exists("./data/Course 3 Project.zip")) {download.file(url,f)} 

# Unzip file into directory 
if (!file.exists("./data/UCI HAR Dataset")) {unzip(zipfile = f, exdir ="./data" )} 

#Read in training data sets 
x_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#Read in test data sets 
x_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./data/UCI HAR Dataset/test/Subject_test.txt")

#Read in feature names
features<-read.table("./data/UCI HAR Dataset/features.txt")

#Read in activity labels
activity_labels<-read.table("./data/UCI HAR Dataset/activity_labels.txt")
activity_labels<-rename(activity_labels, activity_number=V1, Activity=V2)

#Join subject train and test data together 
subject_all<-rbind(subject_train,subject_test)
#Renames V1 in subject training/test labels data before appending to merged data set
subject_all<-rename(subject_all, Subject_Id=V1)

#Join x train and test data together 
x_all<-rbind(x_train,x_test)

# Find all columns with mean() or std() in their names in the features table
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2]) 

# Keep only the mean() or std() columns in the joined x training and test data using output from above step
x_all <- x_all[, mean_and_std_features] 

# Create descriptive column names in the combined data using the features file
names(x_all) <- features[mean_and_std_features, 2]
names(x_all)
# Remove parentheses
names(x_all) = gsub("\\(\\)","",names(x_all))  

# Make valid names
names(x_all) <- make.names(names(x_all))

# Rename variables to be more descriptive
names(x_all) <- gsub('^t',"TimeDomain_",names(x_all))
names(x_all) <- gsub('^f',"FrequencyDomain_",names(x_all))
names(x_all) <- gsub('Acc',"Acceleration",names(x_all))
names(x_all) <- gsub('GyroJerk',"AngularVelocity",names(x_all))
names(x_all) <- gsub('Mag',"Magnitude",names(x_all))
names(x_all) <- gsub('\\.mean',"_Mean",names(x_all))
names(x_all) <- gsub('\\.std',"_StandardDeviation",names(x_all))
names(x_all) <- gsub('\\.',"_",names(x_all))

names(x_all)

#Join y train and test data together 
y_all<-rbind(y_train,y_test)

#Renames V1 in training/test labels data before appending to training/test data set
y_all<-rename(y_all, activity_number=V1)

#Join all data
all_data<-cbind(subject_all, y_all, x_all)

#Merge data to replace activity numebrs with descriptive activity labels
all_data<-merge(all_data, activity_labels, by = 'activity_number')

#Reorder to put activity in second position and drop activity number
all_data<- all_data[, c(1, 2, 69, 3:68)]
all_data <- subset(all_data, select = -c(activity_number) )

#Write out full merged data set
write.table(all_data, file = "full merged data set.txt",row.name=FALSE,quote = FALSE, sep = '\t')

#Summarize data by subject and activity using means
subject_by_activity <- group_by(all_data, Subject_Id, Activity)
summarized_data<-summarise_all(subject_by_activity,mean,na.rm=TRUE)

#Write out tidy data set of summarized data
write.table(summarized_data, file = "tidydata.txt",row.name=FALSE,quote = FALSE, sep = '\t')

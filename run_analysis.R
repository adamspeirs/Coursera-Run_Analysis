#create directories for data, download and extract zip file 

fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,destfile = "./Smart.zip",method = "curl")
unzip("./Smart.zip", exdir = ".")

##1. Merges the training and the test sets to create one data set.
#read and assign data tables  
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

#rename variables in x
Names<-read.table("./UCI HAR Dataset/features.txt")
colnames(x_test)<-Names$V2 
colnames(x_train)<-Names$V2 

#combine variables in both train and test
x_train$activities <- y_train$V1
x_train$subjects <- subject_train$V1
train<-x_train[c(563, 562, 1:561, drop=F)]

x_test$activities <- y_test$V1
x_test$subjects <- subject_test$V1
test<-x_test[c(563, 562, 1:561, drop=F)]

#merge train and test on all
library(plyr); library(dplyr)
allData<-merge(test, train, all=T)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.
msData<-allData[grepl("mean\\()|std\\()|subjects|activities", names(allData))]
        
##3. Uses descriptive activity names to name the activities in the data set
actNames<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
msData$activities<-actNames[msData$activities]

##4. Appropriately labels the data set with descriptive variable names.
#I recognize that this is ugly and inefficient; just need to get it out the door.
msDataTest <- gsub("^t","time",names(msData))
msDataTest <- gsub("^f","frequency",msDataTest) 
msDataTest <- gsub("Acc","acceleration",msDataTest)
msDataTest <- gsub("Mag","magnitude",msDataTest)
msDataTest <- gsub("mean\\()","meanvalue",msDataTest)
msDataTest <- gsub("std\\()","standarddeviation",msDataTest)
msDataTest <- gsub("-","",msDataTest)
msDataTest <- tolower(msDataTest)
colnames(msData)<-msDataTest

##5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
msDataAvgs <- msData %>%
        group_by(activities, subjects) %>%
        summarize_all(mean)

#write to file
write.csv(msDataAvgs, file = "./msDataAvgs.csv", row.names=FALSE)
write.table(msDataAvgs, file = "./msDataAvgs.txt", sep=",", row.names = F)


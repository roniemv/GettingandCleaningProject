## Getting and Cleaning Data Project
## Author: Ronie Martinez
## Prerequisites: the working directory is the folder "UCI HAR Dataset" downloaded

library(dplyr)

## Read the x and y train data
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/Y_train.txt")
subtrain<-read.table("./train/subject_train.txt")
## Read the x and y test data
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/Y_test.txt")
subtest<-read.table("./test/subject_test.txt")

##STEP 1: Merges the training and the test sets to create one data set.

## Bind the train and test data separately
traindata<-cbind(xtrain,ytrain,subtrain)
testdata<-cbind(xtest,ytest,subtest)
## Merge the data
data<-rbind(traindata,testdata)

##STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.

## Read the features data
features<-read.table("features.txt")
## Look for "mean" or "std" in the labels
cmeansd<-grep("[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]",features$V2)
## In order to use these positions as subset
## Add the last two columns to this vector (Subject and Activity)
subs<-c(cmeansd,562,563)
## Subset the merged data
data<-data[,subs]

##STEP 3: Uses descriptive activity names to name the activities in the data set

## Read the activity labels
activity<-read.table("activity_labels.txt")
## Merge a new column with the labels and remove the first column (reference)
data<-merge(data,activity,by.x = "V1.1",by.y = "V1",all=FALSE,sort=FALSE)
data<-data[,-1]

##STEP 4: Appropriately labels the data set with descriptive variable names.

## Remove "-" and "()" from the names in features
features$V2<-gsub("-|[()]","",features$V2)
## Get the label names from the features data
columns<-features$V2[cmeansd]
## Convert to character
columns<-as.character(columns) 
## Add the last two column names
columns<-c(columns,"Subject","Activity") 
##Assign the names to the dataset
names(data)<-columns
## Get the Subject and Activity columns first
data<-select(data,"Subject","Activity",everything())

##STEP 5: From the data set in step 4, creates a second, independent tidy data
## set with the average of each variable for each activity and each subject.

## Create tidy dataset and group it by subject and activity
tidy<-group_by(data,Subject,Activity) 
## Get the mean for each activity and subject
tidy<-summarise_each(tidy, funs(mean))

## Write data
write.table(tidy,file="./tidydata.txt",row.names=FALSE)
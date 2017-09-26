﻿# GetCleanData
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
1.The submitted data set is tidy. 
2.The Github repo contains the required scripts.
3.GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4.The README that explains the analysis files is clear and understandable.5.The work submitted for this project is the work of the student who submitted it.

Following is the Data Set which is available for Project as given at following site http://archive.ics.uci.edu
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
Code 

Step 1: -Set the directory to desired path
setwd("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

Step 2:- Read the files, I have read in following order
- Read the features file and keep only column 2 which are name of variable
  features <- read.csv("features.txt",sep=" ",header = FALSE)[2]
  Remove the "_" and "()" from variable names
  features<-mutate(features,V2=gsub("[()-]","",V2))
- Read Activities_lable.txt and store in object activities
  activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)
- Read Training set and Test Set
  testset <- read.csv("./test/X_test.txt",sep="",header = FALSE)
  trainset <- read.csv("./train/X_train.txt",sep="",header = FALSE)
- Read Training Lables and Test Lables
  testsetY<-read.csv("./test/Y_test.txt",sep="",header = FALSE)
  trainsetY <- read.csv("./train/Y_train.txt",sep="",header = FALSE)
- Combine the test and training Lables
  combsetY<-rbind(testsetY,trainsetY)
- Read the subject files for training and test data
  trainsetSub <- read.csv("./train/subject_train.txt",sep="",header = FALSE)
  testsetSub <- read.csv("./test/subject_test.txt",sep="",header = FALSE)
Step 3:- Combine or Join the data read from files.
- Combine the test and training subjects
  combsub<-rbind(testsetSub,trainsetSub)
- Combine the data for Test set and Train Set
  combset<-rbind(testset,trainset)
- Assign the variable names for combined data set from features data.
  names(combset)<-features[[1]]
- Select only measuresment which are mean and standard deviation
  selectset<-combset[grepl("mean|std",names(combset),ignore.case = TRUE)]
- Join the data of Lables with Activities
  mergelable<-merge(combsetY,activities,by.x = "V1" ,by.y = "V1")
- Use only 2 column as we just need labels, mergelable <-mergelable[2]
- Merge the columns of Subject, Activities and its measurement
  finalset <- cbind(combsub,mergelable,selectset)
  finalset <- rename(finalset,"Subject"=V1,"Activity"=V2)
- Tidy Data set with Averages each measures
  avg<-group_by(finalset,Subject,Activity) %>% summarise_all(funs(mean))
- Writing the data back to file
  write.csv(avg,file="Tidy_data.csv",row.names = FALSE)
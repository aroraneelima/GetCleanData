#set the url and file name
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
zfile <-"getdata_projectfiles_UCI HAR Dataset.zip"

# Check if file exists else download the file
if( !file.exists(zfile))
{
download.file(fileurl,zfile,mode="wb")

}
#Unzip the file
unzip(zfile)
setwd("./UCI HAR Dataset")

# Read the features files 
features <- read.csv("features.txt",sep=" ",header = FALSE)[2]
# Remove the _ and () from the variable names
features<-mutate(features,V2=gsub("[()-]","",V2))
# Read the Activity files 
activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)
activities <- rename(activities, activityid="V1",activityname="V2")

# Read Training set and Test Set
testsetdata <- read.csv("./test/X_test.txt",sep="",header = FALSE)
trainsetdata <- read.csv("./train/X_train.txt",sep="",header = FALSE)

# Read Training Lables and Test Lables
testsetY<-read.csv("./test/Y_test.txt",sep="",header = FALSE)
trainsetY <- read.csv("./train/Y_train.txt",sep="",header = FALSE)

# Read the subject
trainsetSub <- read.csv("./train/subject_train.txt",sep="",header = FALSE)
testsetSub <- read.csv("./test/subject_test.txt",sep="",header = FALSE)

# Combines test subject, data and activities
testset <-cbind(testsetSub,testsetY,testsetdata)
# Combines train subject, data and activities
trainset <-cbind(trainsetSub,trainsetY,trainsetdata)
#Combine the test and training Lables
combset<-rbind(testset,trainset)

# Rename the names of combines set from Feature data
names(combset)<-c("subject","activity",features[[1]])
# Select only measuresment which are mean and standard deviation
selectset<-combset[grepl("subject|activity|mean|std",names(combset),ignore.case = TRUE)]

# Assign Label names to Activities
finalset <-merge(selectset,activities,by.x = "activity", by.y = "activityid")
# Tidy Data set with Averages each measures
avg<-selectset %>% group_by(subject,activity) %>% summarise_all(funs(mean))

#Writing the data back to file
write.table(avg,file="Tidy_data.txt",sep=",",row.names = FALSE)
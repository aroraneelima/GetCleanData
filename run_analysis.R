setwd("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
# Read the features files 
features <- read.csv("features.txt",sep=" ",header = FALSE)[2]
# Remove the _ and () from the variable names
features<-mutate(features,V2=gsub("[()-]","",V2))
# Read the Activity files 
activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)

# Read Training set and Test Set
testset <- read.csv("./test/X_test.txt",sep="",header = FALSE)
trainset <- read.csv("./train/X_train.txt",sep="",header = FALSE)

# Read Training Lables and Test Lables
testsetY<-read.csv("./test/Y_test.txt",sep="",header = FALSE)
trainsetY <- read.csv("./train/Y_train.txt",sep="",header = FALSE)
#Combine the test and training Lables
combsetY<-rbind(testsetY,trainsetY)

# Read the subject
trainsetSub <- read.csv("./train/subject_train.txt",sep="",header = FALSE)
testsetSub <- read.csv("./test/subject_test.txt",sep="",header = FALSE)
#Combine the test and training subjects
combsub<-rbind(testsetSub,trainsetSub) #10299 Rows

#Combine the data for Test set and Train Set
combset<-rbind(testset,trainset) #10299 Rows
# Rename the names of combines set from Feature data
names(combset)<-features[[1]
# Select only measuresment which are mean and standard deviation
selectset<-combset[grepl("mean|std",names(combset),ignore.case = TRUE)]

# Join the data of Lables with Activities
mergelable<-merge(combsetY,activities,by.x = "V1" ,by.y = "V1")
mergelable <-mergelable[2]

# combine the Subject, Activities and its measurement
finalset <- cbind(combsub,mergelable,selectset)
finalset <- rename(finalset,"Subject"=V1,"Activity"=V2)

# Tidy Data set with Averages each measures
avg<-group_by(finalset,Subject,Activity) %>% summarise_all(funs(mean))

#Writing the data back to file
write.csv(avg,file="Tidy_data.csv",row.names = FALSE)
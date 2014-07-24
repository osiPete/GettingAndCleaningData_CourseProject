# preliminaries
# since we don't want to upload the original raw data file to github, i'm going to assume you don't
# ... downloading from the course site if you want to run this again

# download and unzip the file
if(!file.exists("./data")){dir.create("./data")}
fileUrl1="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# this is the downloaded file name, we know this by doing in manually the first time :)
fileName = "getdata-projectfiles-UCI HAR Dataset.zip"
download.file(fileUrl1,destfile=paste0("./data/",fileName),method="curl")
unzip(paste("./data/",fileName,sep=""),exdir="./data/")
# unzip extracts a dir
dir<-"./data/UCI HAR Dataset/"

# import row and variable long names for both sets
activity.names<-read.table(paste0(dir,"activity_labels.txt"))
features.info<-read.table(paste0(dir,"features.txt"))
# import test and train data files
train.subject<-read.table(paste0(dir,"train/subject_train.txt"))
train.labels<-read.table(paste0(dir,"train/y_train.txt"))
train.set<-read.table(paste0(dir,"train/X_train.txt"))
test.subject<-read.table(paste0(dir,"test/subject_test.txt"))
test.labels<-read.table(paste0(dir,"test/y_test.txt"))
test.set<-read.table(paste0(dir,"test/X_test.txt"))

# cbind the 3 files for each of test / train
train.data<-cbind(train.subject,train.labels,train.set)
test.data<-cbind(test.subject,test.labels,test.set)

# rbind the test and train complete sets
all.data<-rbind(train.data,test.data)
names(all.data)[1:2]<-c("Subject","Activity")
#sum(!complete.cases(data))  # double check

# extract mean and sd for each measurement
# names<-tolower(features.info[,2])  # for inspection
features.mean<-grep("mean\\(",features.info[,2],ignore.case=TRUE)
features.std<-grep("std\\(",features.info[,2],ignore.case=TRUE)
features.union=sort(union(features.mean,features.std))
# add the extra 2 columns we added to left end and exclude not wanted
data<-all.data[,c(1:2,features.union+2)]

# use descriptive activity names
data$Activity<-activity.names[match(data[,"Activity"],activity.names[,1]),2]
# factor the subject variable
data$Subject<-factor(data$Subject)

# appropriately label variables
names(data)[3:ncol(data)]<- as.character(features.info[features.union,2])

# tidy data set with av for each variable for each activity and subject
tidy.data<-aggregate(data[3:ncol(data)],by=list(data$Activity,data$Subject),FUN=mean)
names(tidy.data)[1:2]<-c("Subject","Activity")
tidy.data[,1:2]<-tidy.data[,2:1]
head(tidy.data)[,1:4]

# clean up the names. ie; no special characters, spaces, decimals etc
old.names<-names(tidy.data)
new.names<-sub("mean\\(\\)","Mean",old.names)
new.names<-sub("std\\(\\)","Std",new.names)
new.names<-gsub("-","",new.names)
names(tidy.data)<-new.names

# write the dataset to file if needed
write.table(tidy.data,file="./tidy_data.txt",row.names=FALSE)

# create a code book frame for documentation.. if you want
#code.book<-data.frame(new.names)
#code.book<-cbind(code.book,old.names)
#raw.names<-paste0("V",match(old.names, as.character(features.info[,2])))
#raw.names[1:2]<-"V1"
#raw.names
#code.book<-cbind(code.book,raw.names)
#names(code.book)<-c("tidy_data.txt label", "raw label", "raw variable")
#code.book<-cbind(code.book,c("subject_*.txt","y_*.txt",rep("X_*.txt",nrow(code.book)-2)))
#names(code.book)[4]<-"raw src file"

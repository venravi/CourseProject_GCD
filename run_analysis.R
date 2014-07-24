##The next command allows you to work with the required files, regardless which your working directory is.

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="Dataset.zip")
unzip("Dataset.zip")

#Script1: Merges the training and the tests sets to create one data set:

##One data set for train (adding the subject and activity columns)

train <- read.table("UCI HAR Dataset/train/X_train.txt")
train[,562] <- read.table("UCI HAR Dataset/train/subject_train.txt")
train[,563] <- read.table("UCI HAR Dataset/train/y_train.txt")

##One data set for test (adding the subject and activity columns)

test <- read.table("UCI HAR Dataset/test/X_test.txt")
test[,562] <- read.table("UCI HAR Dataset/test/subject_test.txt")
test[,563] <- read.table("UCI HAR Dataset/test/y_test.txt")

##Merging the two data frames.

merge <- rbind(train,test)

#Script 2: Extracts only the measurements on the mean and standard deviation for each measurement.

##Knowing which variables position (i) contains "mean()" or "std()".

features <- read.table("UCI HAR Dataset/features.txt")
i <- c(grep("mean()", as.character(features[,2]),fixed=TRUE),grep("std()", as.character(features[,2]),fixed=TRUE));i=sort(i)

##Subsetting merge according to i.

merge <- merge[,c(i,562,563)]

#Script 3: Uses descriptive activity names to name the activities in the data set.

labels <- read.table("UCI HAR Dataset/activity_labels.txt")

merge[,68] <- labels$V2[merge[,68]]

#Script 4: Appropriately labels the data set with descriptive variable names.

features2=as.character(features[i,2])
features2=gsub("()","",features2,fixed=TRUE)
features2=gsub("-","",features2)
features2=gsub("mean","Mean",features2)
features2=gsub("std","Std",features2)

names(merge) <- c(features2,"subject","activity")

#Script 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

data <- aggregate(merge[,1:66],list(interaction(merge$subject,merge$activity)),mean)

splitNames = strsplit(as.character(data[,1]),"\\.")

firstElement <- function(x){x[1]}
data$subject <- as.factor(sapply(splitNames,firstElement))

secondElement <- function(x){x[2]}
data$activity <- as.factor(sapply(splitNames,secondElement))

dataSet <- data[, c(69,68,2:67)]

##writting data in your WD:
write.table(dataSet,"dataSet.txt",row.names=FALSE)
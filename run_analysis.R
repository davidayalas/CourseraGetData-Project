#datasets directory source
srcpath = "C:\\Users\\david.ayala\\Downloads\\UCI HAR Dataset"

#Load test files: x, y, subject
x_test <- read.table(paste0(srcpath,"/test/X_test.txt"))
y_test <- read.table(paste0(srcpath,"/test/y_test.txt"))
subject_test <- read.table(paste0(srcpath,"/test/subject_test.txt"))

#bind data frames and change last two columns names to Activity and Subject
test_data <- cbind(x_test, y_test, subject_test)
colnames(test_data)[(length(names(test_data))-1)] <- "Activity"
colnames(test_data)[(length(names(test_data)))] <- "Subject"

#Load test files: x, y, subject
x_train <- read.table(paste0(srcpath,"/train/X_train.txt"))
y_train <- read.table(paste0(srcpath,"/train/y_train.txt"))
subject_train <- read.table(paste0(srcpath,"/train/subject_train.txt"))

#bind data frames and change last two columns names to Activity and Subject
train_data <- cbind(x_train, y_train, subject_train)
colnames(train_data)[(length(names(train_data))-1)] <- "Activity"
colnames(train_data)[(length(names(train_data)))] <- "Subject"

#creates full dataset
train_test <- rbind(test_data, train_data)

#Labels activity columns with activity description
activities <- read.table(paste0(srcpath,"/activity_labels.txt"))
train_test$Activity <- apply(train_test, 1, FUN=function(t) activities[activities$V1==t[(length(t)-1)],2:2])

#subsets columns and labels the variables properly, for mean and standard columns
features <- read.table(paste0(srcpath,"/features.txt"))
mean_std <- features[which(grepl("mean\\(\\)", features[[2]], ignore.case=TRUE) | grepl("std\\(\\)", features[[2]], ignore.case=TRUE)),]
mean_std_total <- train_test[, mean_std[,1:1]]

renameCols <- function(c){ 
    c=gsub("\\(","",c)
    c=gsub("\\)","",c)
    c=gsub("-","",c)
    c=gsub("tBody","TimeBody",c)
    c=gsub("fBody","FrequencyBody",c)
    c=gsub("tGravity","TimeGravity",c)
    c=gsub("std","Std",c)
    c=gsub("mean","Mean",c)
    c=gsub("angle","Angle",c)
    c=gsub(",gravity","-Gravity",c)
}

colnames(mean_std_total) <- lapply(mean_std[,2:2],FUN=renameCols)
mean_std_total$Activity <- train_test$Activity
mean_std_total$Subject <- train_test$Subject

#data aggregation by Subject and Activity and mean in all variables
tidy <- aggregate(mean_std_total, by=list(Subject=mean_std_total$Subject, Activity=mean_std_total$Activity), FUN=mean)
tidy<-tidy[,1:(length(names(tidy))-2)] #removes last two cols (Activity, Subject)

#saves dataset to file
write.table(tidy, file=paste0(srcpath,"/tidy.txt"),row.names=FALSE)
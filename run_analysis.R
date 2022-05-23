## install the libraries which we use in this lesson
install.packages("stringr")
library(stringr)
library(dplyr)

## set the activity_label data
setwd("~/data/UCI HAR Dataset")
#### read the activity_label data
actlabel <- read.table("activity_labels.txt", header=FALSE)

## read and manipulate the training data
setwd("~/data/UCI HAR Dataset/train")
#### read the subject_id data, and set the appropriately label.
t1 <- read.table("subject_train.txt", header=FALSE)  
colnames(t1) = c("subject_id")
#### read the 561-feature vector data, and set appropriately labels.
t2 <- read.table("x_train.txt", header=FALSE) ## A 561-feature vector 
colnames(t2) <- colnames(t2) %>% str_replace("V", "feature")
#### read the activity label data.
t3 <- read.table("y_train.txt", header=FALSE) 

setwd("~/data/UCI HAR Dataset/train/Inertial Signals")
#### read the body_acc data.
t4 <- read.table("body_acc_x_train.txt", header=FALSE)  
t5 <- read.table("body_acc_y_train.txt", header=FALSE)
t6 <- read.table("body_acc_z_train.txt", header=FALSE)

#### read the body_gyro data.
t7 <- read.table("body_gyro_x_train.txt", header=FALSE)  
t8 <- read.table("body_gyro_y_train.txt", header=FALSE)
t9 <- read.table("body_gyro_z_train.txt", header=FALSE)

#### read the total_acc data.
t10 <- read.table("total_acc_x_train.txt", header=FALSE) 
t11<-  read.table("total_acc_y_train.txt", header=FALSE)
t12 <- read.table("total_acc_z_train.txt", header=FALSE)

#### calculate the mean and SD of measurements, and merge all training data. 
tdata1 <- t1 %>% 
        mutate( "activity" = t3 ) %>%        
        mutate( "Species" = c("train") ) %>% 
        
        mutate( "MeanBodyAccX"=rowMeans(t4)) %>%
        mutate( "SDBodyAccX"=rowMeans(t4)) %>%
        mutate( "MeanBodyAccY"=rowMeans(t5)) %>%
        mutate( "SDBodyAccY"=rowMeans(t5)) %>%
        mutate( "MeanBodyAccZ"=rowMeans(t6)) %>%
        mutate( "SDBodyAccZ"=rowMeans(t6)) %>%
        
        mutate( "MeanBodyGyroX"=rowMeans(t7)) %>%
        mutate( "SDBodyGyroX"=rowMeans(t7)) %>%
        mutate( "MeanBodyGyroY"=rowMeans(t8)) %>%
        mutate( "SDBodyGyroY"=rowMeans(t8)) %>%
        mutate( "MeanBodyGyroZ"=rowMeans(t9)) %>%
        mutate( "SDBodyGyroZ"=rowMeans(t9)) %>%
        
        mutate( "MeanTotalAccX"=rowMeans(t10)) %>%
        mutate( "SDTotalAccX"=rowMeans(t10)) %>%
        mutate( "MeanTotalAccY"=rowMeans(t11)) %>%
        mutate( "SDTotalAccY"=rowMeans(t11)) %>%
        mutate( "MeanTotalAccZ"=rowMeans(t12)) %>%
        mutate( "SDTotalAccZ"=rowMeans(t12)) %>%
        
        mutate( t2 ) 

## read and manipulate the test data
setwd("~/data/UCI HAR Dataset/test")
#### read the subject_id data, and set the appropriately label.
t1 <- read.table("subject_test.txt", header=FALSE)  
colnames(t1) = c("subject_id")
#### read the 561-feature vector data, and set the appropriately labels.
t2 <- read.table("x_test.txt", header=FALSE) 
colnames(t2) <- colnames(t2) %>% str_replace("V", "feature")
#### read the activity label.
t3 <- read.table("y_test.txt", header=FALSE) 

setwd("~/data/UCI HAR Dataset/test/Inertial Signals")
#### read the body_acc data.
t4 <- read.table("body_acc_x_test.txt", header=FALSE)  
t5 <- read.table("body_acc_y_test.txt", header=FALSE)
t6 <- read.table("body_acc_z_test.txt", header=FALSE)

#### read the body_gyro data.
t7 <- read.table("body_gyro_x_test.txt", header=FALSE)  
t8 <- read.table("body_gyro_y_test.txt", header=FALSE)
t9 <- read.table("body_gyro_z_test.txt", header=FALSE)

#### read the total_acc data.
t10 <- read.table("total_acc_x_test.txt", header=FALSE) 
t11<-  read.table("total_acc_y_test.txt", header=FALSE)
t12 <- read.table("total_acc_z_test.txt", header=FALSE)

#### calculate the mean and SD of measurements data, and merge all test data. 
tdata2 <- t1 %>% 
        mutate( "activity" = t3 ) %>%        
        mutate( "Species"=c("test") ) %>% 
        
        mutate( "MeanBodyAccX"=rowMeans(t4)) %>%
        mutate( "SDBodyAccX"=rowMeans(t4)) %>%
        mutate( "MeanBodyAccY"=rowMeans(t5)) %>%
        mutate( "SDBodyAccY"=rowMeans(t5)) %>%
        mutate( "MeanBodyAccZ"=rowMeans(t6)) %>%
        mutate( "SDBodyAccZ"=rowMeans(t6)) %>%
        
        mutate( "MeanBodyGyroX"=rowMeans(t7)) %>%
        mutate( "SDBodyGyroX"=rowMeans(t7)) %>%
        mutate( "MeanBodyGyroY"=rowMeans(t8)) %>%
        mutate( "SDBodyGyroY"=rowMeans(t8)) %>%
        mutate( "MeanBodyGyroZ"=rowMeans(t9)) %>%
        mutate( "SDBodyGyroZ"=rowMeans(t9)) %>%
        
        mutate( "MeanTotalAccX"=rowMeans(t10)) %>%
        mutate( "SDTotalAccX"=rowMeans(t10)) %>%
        mutate( "MeanTotalAccY"=rowMeans(t11)) %>%
        mutate( "SDTotalAccY"=rowMeans(t11)) %>%
        mutate( "MeanTotalAccZ"=rowMeans(t12)) %>%
        mutate( "SDTotalAccZ"=rowMeans(t12)) %>%
        
        mutate( t2 ) 
        
#### merge the training data and the test data
tableall <- rbind(tdata1,tdata2)

## change the activity data to descritive active names
tableall <- tableall %>%  mutate( activity = case_when(
        activity == 1 ~ actlabel$V2[1],  ## WALKING 
        activity == 2 ~ actlabel$V2[2],  ## WALKING_UPSTAIRS
        activity == 3 ~ actlabel$V2[3],  ## WALKING_DOWNSTAIRS
        activity == 4 ~ actlabel$V2[4],  ## SITTING
        activity == 5 ~ actlabel$V2[5],  ## STANDING
        activity == 6 ~ actlabel$V2[6])) ## LAYING

## create the tidy data set with the average of each variable  
##        for each activity and each subject
tableactivity <- tableall %>% 
        select(-starts_with("SD"), -Species) %>% 
        group_by(activity, subject_id) %>%
        summarise_all(list(mean))
write.table(tableactivity, "~/data//UCI HAR Dataset/tableactivity.csv", 
            row.name=FALSE,sep=",")







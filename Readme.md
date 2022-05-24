# Script name
run_analysis.R

# Requirements
1. Mac OS ver12.3.1
2. R version 4.1.3 (2022-03-10)

# Overview
Getting and Cleaning the Data collected from the accelerometers from smartfone.

# Features
1. It reads the activity label data from ./activity_labels.txt

2. It reads the Below training data from "training" directory.
   1. ./train/subject_train.txt :Each row identifies the subject 
                            who performed the activity or each window sample.
   2. ./train/X_train.txt : A 561-feature vector with time and frequency domain variables
   3. ./train/y_train.txt : Training activity label.

   4. ./train/Inertial Signals/body_acc_x_train/txt
                              /body_acc_y_train/txt
                              /body_acc_z_train/txt 
     : The body acceleration signal obtained by subtracting the gravity from the total acceleration.
       
   5. ./train/Inertial Signals/body_gyro_x_train/txt
                              /body_gyro_y_train/txt
                              /body_gyro_z_train/txt 
     : The angular velocity vector measured by the gyroscope.
       
   6. ./train/Inertial Signals/total_acc_x_train/txt
                              /total_acc_y_train/txt
                              /total_acc_z_train/txt 
     : The acceleration signal from the smartphone accelerometer.
     
3. It calculates means and standard deviations of above measurement(2.ⅱ, 2.ⅳ~2.ⅵ)
4. It Merges the subject data(2.ⅰ), the activity data(2.ⅲ),  
   means and standard deviations(3) of training data.
   
5. It reads the below test data from "test" directory.
   1. ./test/subject_train.txt :Each row identifies the subject 
                            who performed the activity or each window sample.
   2. ./test/X_train.txt : A 561-feature vector with time and frequency domain variables
   3. ./test/y_train.txt : Training activity label.

   4. ./test/Inertial Signals/body_acc_x_train/txt
                             /body_acc_y_train/txt
                             /body_acc_z_train/txt 
     : The body acceleration signal obtained by subtracting the gravity from the total acceleration.
       
   5. ./test/Inertial Signals/body_gyro_x_train/txt
                             /body_gyro_y_train/txt
                             /body_gyro_z_train/txt 
     : The angular velocity vector measured by the gyroscope.
       
   6. ./test/Inertial Signals/total_acc_x_train/txt
                             /total_acc_y_train/txt
                             /total_acc_z_train/txt 
     : The acceleration signal from the smartphone accelerometer.

6. It calculates means and standard deviations of above measurement(5.ⅱ, 5.ⅳ~5.ⅵ)
7. It merges the subject data(5.ⅰ), the activity data(5.ⅲ), means and standard deviations(6) of training data.

8. It merges the above training data(4) and test data(7).
   In this script, merged data is "tableall", After that, change the numeric activity label data to the　descriptive variable names.

9. From the data set(8), creates the new data set with the average of each variable for each activity and each subject, that name is "tableactivity".


# Author
Reiko Takizuka<br>
reikotakizuka@gmail.com

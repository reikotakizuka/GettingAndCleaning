# table1. Information about the variables in the first tidy dataset(tableall).
  
| No.|variable | type | description |
| :-|:--- | :---| :---|
| 1|subject_id | integer | subject ID: 1~30 |
| 2|activity | character | activity label: "WALKING" or "WALKING_UPSTAIRS" or "WALKING_DOWNSTAIRS" or "SITTING" or "STANDING" or "LAYING" |
| 3|MeanBodyAccX | numeric | mean of 128 body_acc_x data in a fixed-with window |
| 4|SDBodyAccX | numeric | SD deviation of 128 body_acc_x in a fixed-with window|
| 5|MeanBodyAccY | numeric | mean of 128 body_acc_y in a fixed-with window  |
| 6|SDBodyAccY | numeric | SD deviation of 128 body_acc_y in a fixed-with window |
| 7|MeanBodyAccZ | numeric | mean of 128 body_acc_x in a fixed-with window |
| 8|SDBodyAccZ | numeric | SD deviation of 128 body_acc_z in a fixed-with window |
| 9|MeanBodyGyroX | numeric | mean of 128 body_gyro_x in a fixed-with window |
| 10|SDBodyGyroX | numeric | SD deviation of 128 body_gyro_x in a fixed-with window |
| 11|MeanBodyGyroY | numeric | mean of 128 body_gyro_y in a fixed-with window|
| 12|SDBodyGyroY | numeric | SD deviation of 128 body_gyro_y in a fixed-with window |
| 13|MeanBodyGyroZ | numeric | mean of 128 body_gyro_z in a fixed-with window |
| 14|SDBodyGyroZ | numeric | D deviation of 128 body_gyro_z in a fixed-with window |
| 15|MeanTotalAccX | numeric | mean of 128 total_acc_x |
| 16|SDTotalAccX | numeric | SD deviation of 128 total_acc_x in a fixed-with window |
| 17|MeanTotalAccY | numeric | mean of t128 otal_acc_y |
| 18|SDTotalAccY | numeric | SD deviation of 128 total_acc_y in a fixed-with window |
| 19|MeanTotalAccZ | numeric | mean of 128 total_acc_z  |
| 20|SDTotalAccZ | numeric | SD deviation of 128 total_acc_z in a fixed-with window |
| 21|feature1 | numeric | the value of tBodyAcc-mean()-X in a fixed-with window|
| : |: | : | There are other 559 features. |
| 580|feature561 | numeric | the value of abgle(Z,gravityMean) |
| 581|Species | character | "trainig" or "test" |

# table2. Information about the variables in the second tidy dataset(tableactivity).
| No.|variable | data type | description |
| :-|:--- | :--- | :--- |
|  1|activity | character | activity_label:"WALKING" or "WALKING_UPSTAIRS" or "WALKING_DOWNSTAIRS" or "SITTING" or "STANDING" or "LAYING"  |
|  2|subject_id | integer | subject_id:1~30 |
|  3|avMeanBodyAccX | numeric | average of MeanBodyAccX(table1-3) for each activity and each subject |
|  4|avMeanBodyAccY | numeric | average of MeanBodyAccY(table1-5) for each activity and each subject |
|  5|avMeanBodyAccZ | numeric | average of MeanBodyAccZ(table1-7) for each activity and each subject |
|  6|avMeanBodyGyroX | numeric | average of MeanBodyGyroX(table1-9) for each activity and each subject |
|  7|avMeanBodyGyroY | numeric | average of MeanBodyGyroY(table1-11) for each activity and each subject |
|  8|avMeanBodyGyroZ | numeric | average of MeanBodyGyroZ(table1-13) for each activity and each subject |
|  9|avMeanTotalAccX | numeric | average of TotalBodyAccX(table1-15) for each activity and each subject |
| 10|avMeanTotalAccY | numeric | average of TotalBodyAccY(table1-17) for each activity and each subject |
| 11|avMeanTotalAccZ | numeric | average of TotalBodyAccZ(table1-19) for each activity and each subject |
| 12|avfeature1 | numeric | average of tBodyAcc-mean()-X(table1-21)for each activity and each subject |
| : | : | : |There are other 559 feature's average data. |
| 571|avfeature561 | numeric | average of abgle(Z,gravityMean)(table1-580) for each activity and each subject |


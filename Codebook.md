# Data Cleaning Process

First, the data was read from the different files (X_train.txt, Y_train.txt,Subject_train.txt,X_test.txt,Y_test.txt,Subject_test.txt) and merged in a single data table. 
Then another file called "features.txt" which contains the variables names, was used to get the column numbers of the labels that content the word "mean" or "std" in uppercase or lowercase. These positions were used to subset the data table.
In order to do this subset, it was included two extra positions (Subject and Y columns merged in the data table).
Later, another file called "activity_labels.txt", which contains the 6 different activities expresed in text, was used to replace the column Y with the text version of the activities. The function merged was used with the parameter sort=FALSE, so that the data will stay in the same order.
After that, the labels of the data table were changed into a descriptive variable names. The file features.txt used previosly had the original variable names but ,before they were assigned as the names of the data table, the characters "-" and "()" were removed and the two extra columns labels were added "Subject" and "Activity"
Finally, the data was grouped by Subject and Activity and summarised with the mean parameter and created a file called "tidydata.txt"

# Variables

|Position|Column Name|Description|
|--------|-----------|-----------|
|1|Subject|The subject of the test represented by a number|
|2|Activity|The activity that the subject was doing|
|3|tBodyAccmeanX|The body linear acceleration mean in X|
|4|tBodyAccmeanY|The body linear acceleration mean in Y|
|5|tBodyAccmeanZ|The body linear acceleration mean in Z|
|6|tBodyAccstdX|The body linear acceleration standard deviation in X|
|7|tBodyAccstdY|The body linear acceleration standard deviation in Y|
|8|tBodyAccstdZ|The body linear acceleration standard deviation in Z|
|9|tGravityAccmeanX|The gravity acceleration mean in X|
|10|tGravityAccmeanY|The gravity acceleration mean in Y|
|11|tGravityAccmeanZ|The gravity acceleration mean in Z|
|12|tGravityAccstdX|The gravity acceleration standard deviation in X|
|13|tGravityAccstdY|The gravity acceleration standard deviation in Y|
|14|tGravityAccstdZ|The gravity acceleration standard deviation in Z|
|15|tBodyAccJerkmeanX|The body acceleration jerk mean in X|
|16|tBodyAccJerkmeanY|The body acceleration jerk mean in Y|
|17|tBodyAccJerkmeanZ|The body acceleration jerk mean in Z|
|18|tBodyAccJerkstdX|The body acceleration jerk standard deviation in X|
|19|tBodyAccJerkstdY|The body acceleration jerk standard deviation in Y|
|20|tBodyAccJerkstdZ|The body acceleration jerk standard deviation in Z|
|21|tBodyGyromeanX|The body angular velocity mean in X|
|22|tBodyGyromeanY|The body angular velocity mean in Y|
|23|tBodyGyromeanZ|The body angular velocity mean in Z|
|24|tBodyGyrostdX|The body angular velocity standard deviation in X|
|25|tBodyGyrostdY|The body angular velocity standard deviation in Y|
|26|tBodyGyrostdZ|The body angular velocity standard deviation in Z|
|27|tBodyGyroJerkmeanX|The body angular velocity jerk mean in X|
|28|tBodyGyroJerkmeanY|The body angular velocity jerk mean in Y|
|29|tBodyGyroJerkmeanZ|The body angular velocity jerk mean in Z|
|30|tBodyGyroJerkstdX|The body angular velocity jerk standard deviation in X|
|31|tBodyGyroJerkstdY|The body angular velocity jerk standard deviation in Y|
|32|tBodyGyroJerkstdZ|The body angular velocity jerk standard deviation in Z|
|33|tBodyAccMagmean|The body acceleration mean Euclidean norm|
|34|tBodyAccMagstd|The body acceleration standard deviation Euclidean norm|
|35|tGravityAccMagmean|The gravity acceleration mean in Euclidean norm|
|36|tGravityAccMagstd|The gravity acceleration standard deviation in Euclidean norm|
|37|tBodyAccJerkMagmean|The body acceleration jerk mean in Euclidean norm|
|38|tBodyAccJerkMagstd|The body acceleration jerk standard deviation in Euclidean norm|
|39|tBodyGyroMagmean|The body angular velocity mean in Euclidean norm|
|40|tBodyGyroMagstd|The body angular velocity standard deviation in Euclidean norm|
|41|tBodyGyroJerkMagmean|The body angular velocity jerk mean in Euclidean norm|
|42|tBodyGyroJerkMagstd|The body angular velocity jerk standard deviation in Euclidean norm|
|43|fBodyAccmeanX|The body acceleration mean in X after FFT|
|44|fBodyAccmeanY|The body acceleration mean in Y after FFT|
|45|fBodyAccmeanZ|The body acceleration mean in Z after FFT|
|46|fBodyAccstdX|The body acceleration standard deviation in X after FFT|
|47|fBodyAccstdY|The body acceleration standard deviation in Y after FFT|
|48|fBodyAccstdZ|The body acceleration standard deviation in Z after FFT|
|49|fBodyAccmeanFreqX|The body acceleration mean frequency in X after FFT|
|50|fBodyAccmeanFreqY|The body acceleration mean frequency in Y after FFT|
|51|fBodyAccmeanFreqZ|The body acceleration mean frequency in Z after FFT|
|52|fBodyAccJerkmeanX|The body acceleration jerk mean in X after FFT|
|53|fBodyAccJerkmeanY|The body acceleration jerk mean in Y after FFT|
|54|fBodyAccJerkmeanZ|The body acceleration jerk mean in Z after FFT|
|55|fBodyAccJerkstdX|The body acceleration jerk standard deviation in X after FFT|
|56|fBodyAccJerkstdY|The body acceleration jerk standard deviation in Y after FFT|
|57|fBodyAccJerkstdZ|The body acceleration jerk standard deviation in Z after FFT|
|58|fBodyAccJerkmeanFreqX|The body acceleration jerk mean frequency in X after FFT|
|59|fBodyAccJerkmeanFreqY|The body acceleration jerk mean frequency in Y after FFT|
|60|fBodyAccJerkmeanFreqZ|The body acceleration jerk mean frequency in Z after FFT|
|61|fBodyGyromeanX|The body angular velocity mean in X after FFT|
|62|fBodyGyromeanY|The body angular velocity mean in Y after FFT|
|63|fBodyGyromeanZ|The body angular velocity mean in Z after FFT|
|64|fBodyGyrostdX|The body angular velocity standard deviation in X after FFT|
|65|fBodyGyrostdY|The body angular velocity standard deviation in Y after FFT|
|66|fBodyGyrostdZ|The body angular velocity standard deviation in Z after FFT|
|67|fBodyGyromeanFreqX|The body angular velocity mean frequency in X after FFT|
|68|fBodyGyromeanFreqY|The body angular velocity mean frequency in Y after FFT|
|69|fBodyGyromeanFreqZ|The body angular velocity mean frequency in Z after FFT|
|70|fBodyAccMagmean|The body acceleration mean in Euclidean norm after FFT|
|71|fBodyAccMagstd|The body acceleration standard deviation in Euclidean norm after FFT|
|72|fBodyAccMagmeanFreq|The body acceleration mean frequency in Euclidean norm after FFT|
|73|fBodyBodyAccJerkMagmean|The body acceleration jerk mean in Euclidean norm after FFT|
|74|fBodyBodyAccJerkMagstd|The body acceleration jerk standard deviation frequency in Euclidean norm after FFT|
|75|fBodyBodyAccJerkMagmeanFreq|The body acceleration jerk mean frequency in Euclidean norm after FFT|
|76|fBodyBodyGyroMagmean|The body angular velocity mean in Euclidean norm after FFT|
|77|fBodyBodyGyroMagstd|The body angular velocity standard deviation in Euclidean norm after FFT|
|78|fBodyBodyGyroMagmeanFreq|The body angular velocity mean frequency in Euclidean norm after FFT|
|79|fBodyBodyGyroJerkMagmean|The body angular velocity mean jerk in Euclidean norm after FFT|
|80|fBodyBodyGyroJerkMagstd|The body angular velocity standard deviation jerk in Euclidean norm after FFT|
|81|fBodyBodyGyroJerkMagmeanFreq|The body angular velocity mean frequency jerk in Euclidean norm after FFT|
|82|angletBodyAccMean,gravity|Angle between the body acceleration mean and gravity|
|83|angletBodyAccJerkMean,gravityMean|Angle between the body acceleration jerk mean and gravity mean|
|84|angletBodyGyroMean,gravityMean|Angle between the body angular velocity mean and gravity mean|
|85|angletBodyGyroJerkMean,gravityMean|Angle between the body angular velocity jerk mean and gravity mean|
|86|angleX,gravityMean|Angle between X and gravity mean|
|87|angleY,gravityMean|Angle between Y and gravity mean|
|88|angleZ,gravityMean|Angle between Z and gravity mean|

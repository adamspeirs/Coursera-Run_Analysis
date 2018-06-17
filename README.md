# Coursera-Run_Analysis
Repo for final assignment in Coursera - Data Science - Getting and Cleaning Data 

The first part of the my run_analysis script downloads and extracts the source data packet to your working directory. 


----


To fulfill requirement #1:  Merges the training and the test sets to create one data set, I created tables for the text files in the source data packet: 
X_train.txt 
Y_train.txt
subject_train.txt 
X_test.txt
Y_test.txt
subject_test.txt 
features.txt

I used the features.txt file and the colnames() function to rename the variables in X_test and X_train from V1...Vn to the descriptive names. 

I then appended an 'activities' and 'subjects' column to each X dataframe using the V1 columns in the corresponding Y and subject tables. 

I called the resulting data frames 'test' and 'train', each having 563 descriptively named variables.

Since 'test' and 'train' had identical variables, I used the dplyr:merge() function to get all the observations in one data set. 


----


To fulfill requirement #2: Extracts only the measurements on the mean and standard deviation for each measurement, I used the grepl() function to create a new data set called 'msData' that only contained (in addition to 'subjects' and 'activities') the columns with variable names containing the strings "mean()" and "std()". I had to structure the call with "\\" to allow R to read the "()" as part of the string, e.g. "mean\\()".

This brought the data set down to 68 variables from 563. 

I chose to capture only the columns with mean() and str() because they were unambiguous to me as to what they actually represented. The other variables containing the strings "mean" and "str" looked out of scope. 


----


To fulfill requirement #3. Uses descriptive activity names to name the activities in the data set, I created an ordered character vector using the names in 'activity_labels.txt' and applied it across the numeric 'activities' column. It overwrote the numeric values with the corresponding character values. 


----


To fulfill requirement #4. Appropriately labels the data set with descriptive variable names, I created a series of gsub()s that generated a character vector (of the new variable names) that could be applied using the colnames() function as was used above to name the variables originally.  

This could definitely have been more efficient code, but I was rushed for time and neede something that got the job done despite its ugliness. 

The existing variable names were combinations of the following terms: 
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
mean(): Mean value
std(): Standard deviation

I substituted out the terms defined below (and used the 'tolower()' function) to create new variable names that are descriptive and lowercase, though also quite long.  

t = time 
f = frequency
Acc = acceleration
Mag = magnitude
mean() = meanvalue
std() = standarddeviation"

I also removed the "-" from the varaible names to meet with tidy data requirements. 

An example of the "tidyed" variables names is 'timebodyaccelerationstandarddeviationz', which doesn't strike me as particularly readable, but does meet the definition provided of tidy (all lowercase when possible; descriptive; not duplicated; no underscores or dots or white spaces). 


----


To meet requirement #5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject, I created a new data set named 'msDataAvgs' by simply grouping by 'subjects' and 'activities' using the group_by() function, and using the summarize_all() function to get the mean/average values across each of the other 66 variables. 

This combined down by subject number and then activity the original 10,299 observations to 180 by creating a single observation for, for instance, Subject 1 - WALKING or Subject 22 - Laying, with an average of all observations for the combination in 'msData' for each of the remaining 66 variables.

I also added code in the script to write the final data set, "msDataAvgs" as both .csv and .txt files to your working directory. 

To open the .csv file in R: 
df <- read.csv("./msDataAvgs.csv")

To open the .txt file in R: 
df <- read.table("./msDataAvgs.txt", header=T, sep=",")

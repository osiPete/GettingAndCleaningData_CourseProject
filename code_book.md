Getting and Cleaning Data Course Project CODE BOOK
==================================================

Codes
-----
The first 2 variables, Subject and Activity are factors to identify the rows. All other variables are a numeric Average by Subject and Activity of specific measurements ( features ). Refer to bottom of list for full feature description, as described in the raw data source file features_info.txt

1. Subject
    Factor with 30 levels 1...30. These represent individual testers.

2. Activity
    Factor with 6 levels 1...6. Each Subject has 6 Activity levels.
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING

3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z
49. fBodyAccJerk-mean()-X
50. fBodyAccJerk-mean()-Y
51. fBodyAccJerk-mean()-Z
52. fBodyAccJerk-std()-X
53. fBodyAccJerk-std()-Y
54. fBodyAccJerk-std()-Z
55. fBodyGyro-mean()-X
56. fBodyGyro-mean()-Y
57. fBodyGyro-mean()-Z
58. fBodyGyro-std()-X
59. fBodyGyro-std()-Y
60. fBodyGyro-std()-Z
61. fBodyAccMag-mean()
62. fBodyAccMag-std()
63. fBodyBodyAccJerkMag-mean()
64. fBodyBodyAccJerkMag-std()
65. fBodyBodyGyroMag-mean()
66. fBodyBodyGyroMag-std()
67. fBodyBodyGyroJerkMag-mean()
68. fBodyBodyGyroJerkMag-std()

Raw Data description
--------------------
The following is an amended excerpt from the raw data file features_info.txt. Please note, as described above, the tidy_data.txt file is an Average by grouping of these values. Please see the README.md for the source of this excerpt.

**Start features_info.txt excerpt**  
Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation  

**End features_info.txt excerpt**  

Code Map
-------
map of tidy_data.txt variable labels back to raw file label, variable name and source file. * may equal 'train' or 'test' in column 'raw src file'.

```
        tidy_data.txt label                   raw label raw variable  raw src file
1                   Subject                     Subject           V1 subject_*.txt
2                  Activity                    Activity           V1       y_*.txt
3             tBodyAccMeanX           tBodyAcc-mean()-X           V1       X_*.txt
4             tBodyAccMeanY           tBodyAcc-mean()-Y           V2       X_*.txt
5             tBodyAccMeanZ           tBodyAcc-mean()-Z           V3       X_*.txt
6              tBodyAccStdX            tBodyAcc-std()-X           V4       X_*.txt
7              tBodyAccStdY            tBodyAcc-std()-Y           V5       X_*.txt
8              tBodyAccStdZ            tBodyAcc-std()-Z           V6       X_*.txt
9          tGravityAccMeanX        tGravityAcc-mean()-X          V41       X_*.txt
10         tGravityAccMeanY        tGravityAcc-mean()-Y          V42       X_*.txt
11         tGravityAccMeanZ        tGravityAcc-mean()-Z          V43       X_*.txt
12          tGravityAccStdX         tGravityAcc-std()-X          V44       X_*.txt
13          tGravityAccStdY         tGravityAcc-std()-Y          V45       X_*.txt
14          tGravityAccStdZ         tGravityAcc-std()-Z          V46       X_*.txt
15        tBodyAccJerkMeanX       tBodyAccJerk-mean()-X          V81       X_*.txt
16        tBodyAccJerkMeanY       tBodyAccJerk-mean()-Y          V82       X_*.txt
17        tBodyAccJerkMeanZ       tBodyAccJerk-mean()-Z          V83       X_*.txt
18         tBodyAccJerkStdX        tBodyAccJerk-std()-X          V84       X_*.txt
19         tBodyAccJerkStdY        tBodyAccJerk-std()-Y          V85       X_*.txt
20         tBodyAccJerkStdZ        tBodyAccJerk-std()-Z          V86       X_*.txt
21           tBodyGyroMeanX          tBodyGyro-mean()-X         V121       X_*.txt
22           tBodyGyroMeanY          tBodyGyro-mean()-Y         V122       X_*.txt
23           tBodyGyroMeanZ          tBodyGyro-mean()-Z         V123       X_*.txt
24            tBodyGyroStdX           tBodyGyro-std()-X         V124       X_*.txt
25            tBodyGyroStdY           tBodyGyro-std()-Y         V125       X_*.txt
26            tBodyGyroStdZ           tBodyGyro-std()-Z         V126       X_*.txt
27       tBodyGyroJerkMeanX      tBodyGyroJerk-mean()-X         V161       X_*.txt
28       tBodyGyroJerkMeanY      tBodyGyroJerk-mean()-Y         V162       X_*.txt
29       tBodyGyroJerkMeanZ      tBodyGyroJerk-mean()-Z         V163       X_*.txt
30        tBodyGyroJerkStdX       tBodyGyroJerk-std()-X         V164       X_*.txt
31        tBodyGyroJerkStdY       tBodyGyroJerk-std()-Y         V165       X_*.txt
32        tBodyGyroJerkStdZ       tBodyGyroJerk-std()-Z         V166       X_*.txt
33          tBodyAccMagMean          tBodyAccMag-mean()         V201       X_*.txt
34           tBodyAccMagStd           tBodyAccMag-std()         V202       X_*.txt
35       tGravityAccMagMean       tGravityAccMag-mean()         V214       X_*.txt
36        tGravityAccMagStd        tGravityAccMag-std()         V215       X_*.txt
37      tBodyAccJerkMagMean      tBodyAccJerkMag-mean()         V227       X_*.txt
38       tBodyAccJerkMagStd       tBodyAccJerkMag-std()         V228       X_*.txt
39         tBodyGyroMagMean         tBodyGyroMag-mean()         V240       X_*.txt
40          tBodyGyroMagStd          tBodyGyroMag-std()         V241       X_*.txt
41     tBodyGyroJerkMagMean     tBodyGyroJerkMag-mean()         V253       X_*.txt
42      tBodyGyroJerkMagStd      tBodyGyroJerkMag-std()         V254       X_*.txt
43            fBodyAccMeanX           fBodyAcc-mean()-X         V266       X_*.txt
44            fBodyAccMeanY           fBodyAcc-mean()-Y         V267       X_*.txt
45            fBodyAccMeanZ           fBodyAcc-mean()-Z         V268       X_*.txt
46             fBodyAccStdX            fBodyAcc-std()-X         V269       X_*.txt
47             fBodyAccStdY            fBodyAcc-std()-Y         V270       X_*.txt
48             fBodyAccStdZ            fBodyAcc-std()-Z         V271       X_*.txt
49        fBodyAccJerkMeanX       fBodyAccJerk-mean()-X         V345       X_*.txt
50        fBodyAccJerkMeanY       fBodyAccJerk-mean()-Y         V346       X_*.txt
51        fBodyAccJerkMeanZ       fBodyAccJerk-mean()-Z         V347       X_*.txt
52         fBodyAccJerkStdX        fBodyAccJerk-std()-X         V348       X_*.txt
53         fBodyAccJerkStdY        fBodyAccJerk-std()-Y         V349       X_*.txt
54         fBodyAccJerkStdZ        fBodyAccJerk-std()-Z         V350       X_*.txt
55           fBodyGyroMeanX          fBodyGyro-mean()-X         V424       X_*.txt
56           fBodyGyroMeanY          fBodyGyro-mean()-Y         V425       X_*.txt
57           fBodyGyroMeanZ          fBodyGyro-mean()-Z         V426       X_*.txt
58            fBodyGyroStdX           fBodyGyro-std()-X         V427       X_*.txt
59            fBodyGyroStdY           fBodyGyro-std()-Y         V428       X_*.txt
60            fBodyGyroStdZ           fBodyGyro-std()-Z         V429       X_*.txt
61          fBodyAccMagMean          fBodyAccMag-mean()         V503       X_*.txt
62           fBodyAccMagStd           fBodyAccMag-std()         V504       X_*.txt
63  fBodyBodyAccJerkMagMean  fBodyBodyAccJerkMag-mean()         V516       X_*.txt
64   fBodyBodyAccJerkMagStd   fBodyBodyAccJerkMag-std()         V517       X_*.txt
65     fBodyBodyGyroMagMean     fBodyBodyGyroMag-mean()         V529       X_*.txt
66      fBodyBodyGyroMagStd      fBodyBodyGyroMag-std()         V530       X_*.txt
67 fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMag-mean()         V542       X_*.txt
68  fBodyBodyGyroJerkMagStd  fBodyBodyGyroJerkMag-std()         V543       X_*.txt
```

------------------------------------------------------------------------

X-tidy Characteristics
----------------------

The "tidy" data set, **X\_tidy**, is the average (mean) of the subset of
both the activities and subjects. Since there are 6 activities and 30
subjects, the number of rows or observations in **X-tidy** is 180.

> 6 (Activities) \* 30 (Subjects) = 180

Additionaly, the script includes both the descriptive activity labels
and the activity class. This was deemed to be more infomative and
allowed the orginal activity sequence (activity\_labels.txt) to be
preserved.

------------------------------------------------------------------------

Subject
-------

There where 30 individuals participating in the data sets. The subject
data is indexed for each observation in a training and test data set,
**subject\_train.txt** and **subject\_test.txt**, respectively.

------------------------------------------------------------------------

Activity Class and Description
------------------------------

There are 6 activity classes defined in the **activity\_labels.txt**
data set. The activity labels were merged with the activity type
conducted for each observation.

<table class="table table-striped" style="width: auto !important; ">
<thead>
<tr>
<th style="text-align:right;">
Activity Class
</th>
<th style="text-align:left;">
Activity Label
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
WALKING
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
WALKING\_UPSTAIRS
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
WALKING\_DOWNSTAIRS
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
SITTING
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
STANDING
</td>
</tr>
<tr>
<td style="text-align:right;">
6
</td>
<td style="text-align:left;">
LAYING
</td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

Relevant Feature Variable
-------------------------

The tidy data set includes 86 feature variables extracted from the
original data sets, **X\_train.txt** and **X\_test.txt**. These
variables contain the character string "\[mM\]ean" or ""std".

This includes:

<table class="table table-striped" style="width: auto !important; ">
<thead>
<tr>
<th style="text-align:right;">
</th>
<th style="text-align:left;">
feature variable description
</th>
<th style="text-align:right;">
index in features.txt
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
tBodyAcc-mean()-X
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
tBodyAcc-mean()-Y
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
tBodyAcc-mean()-Z
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
tBodyAcc-std()-X
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
tBodyAcc-std()-Y
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:right;">
6
</td>
<td style="text-align:left;">
tBodyAcc-std()-Z
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:right;">
7
</td>
<td style="text-align:left;">
tGravityAcc-mean()-X
</td>
<td style="text-align:right;">
41
</td>
</tr>
<tr>
<td style="text-align:right;">
8
</td>
<td style="text-align:left;">
tGravityAcc-mean()-Y
</td>
<td style="text-align:right;">
42
</td>
</tr>
<tr>
<td style="text-align:right;">
9
</td>
<td style="text-align:left;">
tGravityAcc-mean()-Z
</td>
<td style="text-align:right;">
43
</td>
</tr>
<tr>
<td style="text-align:right;">
10
</td>
<td style="text-align:left;">
tGravityAcc-std()-X
</td>
<td style="text-align:right;">
44
</td>
</tr>
<tr>
<td style="text-align:right;">
11
</td>
<td style="text-align:left;">
tGravityAcc-std()-Y
</td>
<td style="text-align:right;">
45
</td>
</tr>
<tr>
<td style="text-align:right;">
12
</td>
<td style="text-align:left;">
tGravityAcc-std()-Z
</td>
<td style="text-align:right;">
46
</td>
</tr>
<tr>
<td style="text-align:right;">
13
</td>
<td style="text-align:left;">
tBodyAccJerk-mean()-X
</td>
<td style="text-align:right;">
81
</td>
</tr>
<tr>
<td style="text-align:right;">
14
</td>
<td style="text-align:left;">
tBodyAccJerk-mean()-Y
</td>
<td style="text-align:right;">
82
</td>
</tr>
<tr>
<td style="text-align:right;">
15
</td>
<td style="text-align:left;">
tBodyAccJerk-mean()-Z
</td>
<td style="text-align:right;">
83
</td>
</tr>
<tr>
<td style="text-align:right;">
16
</td>
<td style="text-align:left;">
tBodyAccJerk-std()-X
</td>
<td style="text-align:right;">
84
</td>
</tr>
<tr>
<td style="text-align:right;">
17
</td>
<td style="text-align:left;">
tBodyAccJerk-std()-Y
</td>
<td style="text-align:right;">
85
</td>
</tr>
<tr>
<td style="text-align:right;">
18
</td>
<td style="text-align:left;">
tBodyAccJerk-std()-Z
</td>
<td style="text-align:right;">
86
</td>
</tr>
<tr>
<td style="text-align:right;">
19
</td>
<td style="text-align:left;">
tBodyGyro-mean()-X
</td>
<td style="text-align:right;">
121
</td>
</tr>
<tr>
<td style="text-align:right;">
20
</td>
<td style="text-align:left;">
tBodyGyro-mean()-Y
</td>
<td style="text-align:right;">
122
</td>
</tr>
<tr>
<td style="text-align:right;">
21
</td>
<td style="text-align:left;">
tBodyGyro-mean()-Z
</td>
<td style="text-align:right;">
123
</td>
</tr>
<tr>
<td style="text-align:right;">
22
</td>
<td style="text-align:left;">
tBodyGyro-std()-X
</td>
<td style="text-align:right;">
124
</td>
</tr>
<tr>
<td style="text-align:right;">
23
</td>
<td style="text-align:left;">
tBodyGyro-std()-Y
</td>
<td style="text-align:right;">
125
</td>
</tr>
<tr>
<td style="text-align:right;">
24
</td>
<td style="text-align:left;">
tBodyGyro-std()-Z
</td>
<td style="text-align:right;">
126
</td>
</tr>
<tr>
<td style="text-align:right;">
25
</td>
<td style="text-align:left;">
tBodyGyroJerk-mean()-X
</td>
<td style="text-align:right;">
161
</td>
</tr>
<tr>
<td style="text-align:right;">
26
</td>
<td style="text-align:left;">
tBodyGyroJerk-mean()-Y
</td>
<td style="text-align:right;">
162
</td>
</tr>
<tr>
<td style="text-align:right;">
27
</td>
<td style="text-align:left;">
tBodyGyroJerk-mean()-Z
</td>
<td style="text-align:right;">
163
</td>
</tr>
<tr>
<td style="text-align:right;">
28
</td>
<td style="text-align:left;">
tBodyGyroJerk-std()-X
</td>
<td style="text-align:right;">
164
</td>
</tr>
<tr>
<td style="text-align:right;">
29
</td>
<td style="text-align:left;">
tBodyGyroJerk-std()-Y
</td>
<td style="text-align:right;">
165
</td>
</tr>
<tr>
<td style="text-align:right;">
30
</td>
<td style="text-align:left;">
tBodyGyroJerk-std()-Z
</td>
<td style="text-align:right;">
166
</td>
</tr>
<tr>
<td style="text-align:right;">
31
</td>
<td style="text-align:left;">
tBodyAccMag-mean()
</td>
<td style="text-align:right;">
201
</td>
</tr>
<tr>
<td style="text-align:right;">
32
</td>
<td style="text-align:left;">
tBodyAccMag-std()
</td>
<td style="text-align:right;">
202
</td>
</tr>
<tr>
<td style="text-align:right;">
33
</td>
<td style="text-align:left;">
tGravityAccMag-mean()
</td>
<td style="text-align:right;">
214
</td>
</tr>
<tr>
<td style="text-align:right;">
34
</td>
<td style="text-align:left;">
tGravityAccMag-std()
</td>
<td style="text-align:right;">
215
</td>
</tr>
<tr>
<td style="text-align:right;">
35
</td>
<td style="text-align:left;">
tBodyAccJerkMag-mean()
</td>
<td style="text-align:right;">
227
</td>
</tr>
<tr>
<td style="text-align:right;">
36
</td>
<td style="text-align:left;">
tBodyAccJerkMag-std()
</td>
<td style="text-align:right;">
228
</td>
</tr>
<tr>
<td style="text-align:right;">
37
</td>
<td style="text-align:left;">
tBodyGyroMag-mean()
</td>
<td style="text-align:right;">
240
</td>
</tr>
<tr>
<td style="text-align:right;">
38
</td>
<td style="text-align:left;">
tBodyGyroMag-std()
</td>
<td style="text-align:right;">
241
</td>
</tr>
<tr>
<td style="text-align:right;">
39
</td>
<td style="text-align:left;">
tBodyGyroJerkMag-mean()
</td>
<td style="text-align:right;">
253
</td>
</tr>
<tr>
<td style="text-align:right;">
40
</td>
<td style="text-align:left;">
tBodyGyroJerkMag-std()
</td>
<td style="text-align:right;">
254
</td>
</tr>
<tr>
<td style="text-align:right;">
41
</td>
<td style="text-align:left;">
fBodyAcc-mean()-X
</td>
<td style="text-align:right;">
266
</td>
</tr>
<tr>
<td style="text-align:right;">
42
</td>
<td style="text-align:left;">
fBodyAcc-mean()-Y
</td>
<td style="text-align:right;">
267
</td>
</tr>
<tr>
<td style="text-align:right;">
43
</td>
<td style="text-align:left;">
fBodyAcc-mean()-Z
</td>
<td style="text-align:right;">
268
</td>
</tr>
<tr>
<td style="text-align:right;">
44
</td>
<td style="text-align:left;">
fBodyAcc-std()-X
</td>
<td style="text-align:right;">
269
</td>
</tr>
<tr>
<td style="text-align:right;">
45
</td>
<td style="text-align:left;">
fBodyAcc-std()-Y
</td>
<td style="text-align:right;">
270
</td>
</tr>
<tr>
<td style="text-align:right;">
46
</td>
<td style="text-align:left;">
fBodyAcc-std()-Z
</td>
<td style="text-align:right;">
271
</td>
</tr>
<tr>
<td style="text-align:right;">
47
</td>
<td style="text-align:left;">
fBodyAcc-meanFreq()-X
</td>
<td style="text-align:right;">
294
</td>
</tr>
<tr>
<td style="text-align:right;">
48
</td>
<td style="text-align:left;">
fBodyAcc-meanFreq()-Y
</td>
<td style="text-align:right;">
295
</td>
</tr>
<tr>
<td style="text-align:right;">
49
</td>
<td style="text-align:left;">
fBodyAcc-meanFreq()-Z
</td>
<td style="text-align:right;">
296
</td>
</tr>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:left;">
fBodyAccJerk-mean()-X
</td>
<td style="text-align:right;">
345
</td>
</tr>
<tr>
<td style="text-align:right;">
51
</td>
<td style="text-align:left;">
fBodyAccJerk-mean()-Y
</td>
<td style="text-align:right;">
346
</td>
</tr>
<tr>
<td style="text-align:right;">
52
</td>
<td style="text-align:left;">
fBodyAccJerk-mean()-Z
</td>
<td style="text-align:right;">
347
</td>
</tr>
<tr>
<td style="text-align:right;">
53
</td>
<td style="text-align:left;">
fBodyAccJerk-std()-X
</td>
<td style="text-align:right;">
348
</td>
</tr>
<tr>
<td style="text-align:right;">
54
</td>
<td style="text-align:left;">
fBodyAccJerk-std()-Y
</td>
<td style="text-align:right;">
349
</td>
</tr>
<tr>
<td style="text-align:right;">
55
</td>
<td style="text-align:left;">
fBodyAccJerk-std()-Z
</td>
<td style="text-align:right;">
350
</td>
</tr>
<tr>
<td style="text-align:right;">
56
</td>
<td style="text-align:left;">
fBodyAccJerk-meanFreq()-X
</td>
<td style="text-align:right;">
373
</td>
</tr>
<tr>
<td style="text-align:right;">
57
</td>
<td style="text-align:left;">
fBodyAccJerk-meanFreq()-Y
</td>
<td style="text-align:right;">
374
</td>
</tr>
<tr>
<td style="text-align:right;">
58
</td>
<td style="text-align:left;">
fBodyAccJerk-meanFreq()-Z
</td>
<td style="text-align:right;">
375
</td>
</tr>
<tr>
<td style="text-align:right;">
59
</td>
<td style="text-align:left;">
fBodyGyro-mean()-X
</td>
<td style="text-align:right;">
424
</td>
</tr>
<tr>
<td style="text-align:right;">
60
</td>
<td style="text-align:left;">
fBodyGyro-mean()-Y
</td>
<td style="text-align:right;">
425
</td>
</tr>
<tr>
<td style="text-align:right;">
61
</td>
<td style="text-align:left;">
fBodyGyro-mean()-Z
</td>
<td style="text-align:right;">
426
</td>
</tr>
<tr>
<td style="text-align:right;">
62
</td>
<td style="text-align:left;">
fBodyGyro-std()-X
</td>
<td style="text-align:right;">
427
</td>
</tr>
<tr>
<td style="text-align:right;">
63
</td>
<td style="text-align:left;">
fBodyGyro-std()-Y
</td>
<td style="text-align:right;">
428
</td>
</tr>
<tr>
<td style="text-align:right;">
64
</td>
<td style="text-align:left;">
fBodyGyro-std()-Z
</td>
<td style="text-align:right;">
429
</td>
</tr>
<tr>
<td style="text-align:right;">
65
</td>
<td style="text-align:left;">
fBodyGyro-meanFreq()-X
</td>
<td style="text-align:right;">
452
</td>
</tr>
<tr>
<td style="text-align:right;">
66
</td>
<td style="text-align:left;">
fBodyGyro-meanFreq()-Y
</td>
<td style="text-align:right;">
453
</td>
</tr>
<tr>
<td style="text-align:right;">
67
</td>
<td style="text-align:left;">
fBodyGyro-meanFreq()-Z
</td>
<td style="text-align:right;">
454
</td>
</tr>
<tr>
<td style="text-align:right;">
68
</td>
<td style="text-align:left;">
fBodyAccMag-mean()
</td>
<td style="text-align:right;">
503
</td>
</tr>
<tr>
<td style="text-align:right;">
69
</td>
<td style="text-align:left;">
fBodyAccMag-std()
</td>
<td style="text-align:right;">
504
</td>
</tr>
<tr>
<td style="text-align:right;">
70
</td>
<td style="text-align:left;">
fBodyAccMag-meanFreq()
</td>
<td style="text-align:right;">
513
</td>
</tr>
<tr>
<td style="text-align:right;">
71
</td>
<td style="text-align:left;">
fBodyBodyAccJerkMag-mean()
</td>
<td style="text-align:right;">
516
</td>
</tr>
<tr>
<td style="text-align:right;">
72
</td>
<td style="text-align:left;">
fBodyBodyAccJerkMag-std()
</td>
<td style="text-align:right;">
517
</td>
</tr>
<tr>
<td style="text-align:right;">
73
</td>
<td style="text-align:left;">
fBodyBodyAccJerkMag-meanFreq()
</td>
<td style="text-align:right;">
526
</td>
</tr>
<tr>
<td style="text-align:right;">
74
</td>
<td style="text-align:left;">
fBodyBodyGyroMag-mean()
</td>
<td style="text-align:right;">
529
</td>
</tr>
<tr>
<td style="text-align:right;">
75
</td>
<td style="text-align:left;">
fBodyBodyGyroMag-std()
</td>
<td style="text-align:right;">
530
</td>
</tr>
<tr>
<td style="text-align:right;">
76
</td>
<td style="text-align:left;">
fBodyBodyGyroMag-meanFreq()
</td>
<td style="text-align:right;">
539
</td>
</tr>
<tr>
<td style="text-align:right;">
77
</td>
<td style="text-align:left;">
fBodyBodyGyroJerkMag-mean()
</td>
<td style="text-align:right;">
542
</td>
</tr>
<tr>
<td style="text-align:right;">
78
</td>
<td style="text-align:left;">
fBodyBodyGyroJerkMag-std()
</td>
<td style="text-align:right;">
543
</td>
</tr>
<tr>
<td style="text-align:right;">
79
</td>
<td style="text-align:left;">
fBodyBodyGyroJerkMag-meanFreq()
</td>
<td style="text-align:right;">
552
</td>
</tr>
<tr>
<td style="text-align:right;">
80
</td>
<td style="text-align:left;">
angle(tBodyAccMean,gravity)
</td>
<td style="text-align:right;">
555
</td>
</tr>
<tr>
<td style="text-align:right;">
81
</td>
<td style="text-align:left;">
angle(tBodyAccJerkMean),gravityMean)
</td>
<td style="text-align:right;">
556
</td>
</tr>
<tr>
<td style="text-align:right;">
82
</td>
<td style="text-align:left;">
angle(tBodyGyroMean,gravityMean)
</td>
<td style="text-align:right;">
557
</td>
</tr>
<tr>
<td style="text-align:right;">
83
</td>
<td style="text-align:left;">
angle(tBodyGyroJerkMean,gravityMean)
</td>
<td style="text-align:right;">
558
</td>
</tr>
<tr>
<td style="text-align:right;">
84
</td>
<td style="text-align:left;">
angle(X,gravityMean)
</td>
<td style="text-align:right;">
559
</td>
</tr>
<tr>
<td style="text-align:right;">
85
</td>
<td style="text-align:left;">
angle(Y,gravityMean)
</td>
<td style="text-align:right;">
560
</td>
</tr>
<tr>
<td style="text-align:right;">
86
</td>
<td style="text-align:left;">
angle(Z,gravityMean)
</td>
<td style="text-align:right;">
561
</td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

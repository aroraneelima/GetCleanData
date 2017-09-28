Code book explaining the different variables used and any transformation applied on the data.

- features- Features Data and transformed to remove _ and () in the variable names.
- activities - Activities Data
- testsetdata- Test Data
- trainsetdata - Training Set
- testsetY - Test Set Labels
- trainsetY - Training Set Labels
- trainsetSub - Training Subject Numbers
- testsetSub - Test Subject Numbers
- testset - Combined set of test subject, data and activities
- trainset - Combined set of train subject, data and activities
- combset - Total set of training and test data
- selectset - From Combset pick only columns which have mean and standard deviation values
- finalset - Assign Label names to Activities
- avg - Final result grouped by activity and subject with average value of all measures for each group.


Variable List and their properties
#	Variable	Datatype	Description
1	Subject	int			Subject Id :1:30
2	Activity			Factor	""LAYING / SITTING / STANDING / WALKING / WALKING_DOWNSTAIRS / WALKING_UPSTAIRS"
3	tBodyAccmeanX	num		Mean
4	tBodyAccmeanY	num		Mean
5	tBodyAccmeanZ	num		Mean
6	tBodyAccstdX	num		Mean
7	tBodyAccstdY	num		Mean
8	tBodyAccstdZ	num		Mean
9	tGravityAccmeanX	num	Mean
10	tGravityAccmeanY	num	Mean
11	tGravityAccmeanZ	num	Mean
12	tGravityAccstdX	num		Mean
13	tGravityAccstdY	num		Mean
14	tGravityAccstdZ	num		Mean
15	tBodyAccJerkmeanX	num	Mean
16	tBodyAccJerkmeanY	num	Mean
17	tBodyAccJerkmeanZ	num	Mean
18	tBodyAccJerkstdX	num	Mean
19	tBodyAccJerkstdY	num	Mean
20	tBodyAccJerkstdZ	num	Mean
21	tBodyGyromeanX	num		Mean
22	tBodyGyromeanY	num		Mean
23	tBodyGyromeanZ	num		Mean
24	tBodyGyrostdX	num		Mean
25	tBodyGyrostdY	num		Mean
26	tBodyGyrostdZ	num		Mean
27	tBodyGyroJerkmeanX	num	Mean
28	tBodyGyroJerkmeanY	num	Mean
29	tBodyGyroJerkmeanZ	num	Mean
30	tBodyGyroJerkstdX	num	Mean
31	tBodyGyroJerkstdY	num	Mean
32	tBodyGyroJerkstdZ	num	Mean
33	tBodyAccMagmean	num	Mean
34	tBodyAccMagstd	num	Mean
35	tGravityAccMagmean	num	Mean
36	tGravityAccMagstd	num	Mean
37	tBodyAccJerkMagmean	num	Mean
38	tBodyAccJerkMagstd	num	Mean
39	tBodyGyroMagmean	num	Mean
40	tBodyGyroMagstd	num	Mean
41	tBodyGyroJerkMagmean	num	Mean
42	tBodyGyroJerkMagstd	num	Mean
43	fBodyAccmeanX	num	Mean
44	fBodyAccmeanY	num	Mean
45	fBodyAccmeanZ	num	Mean
46	fBodyAccstdX	num	Mean
47	fBodyAccstdY	num	Mean
48	fBodyAccstdZ	num	Mean
49	fBodyAccmeanFreqX	num	Mean
50	fBodyAccmeanFreqY	num	Mean
51	fBodyAccmeanFreqZ	num	Mean
52	fBodyAccJerkmeanX	num	Mean
53	fBodyAccJerkmeanY	num	Mean
54	fBodyAccJerkmeanZ	num	Mean
55	fBodyAccJerkstdX	num	Mean
56	fBodyAccJerkstdY	num	Mean
57	fBodyAccJerkstdZ	num	Mean
58	fBodyAccJerkmeanFreqX	num	Mean
59	fBodyAccJerkmeanFreqY	num	Mean
60	fBodyAccJerkmeanFreqZ	num	Mean
61	fBodyGyromeanX	num	Mean
62	fBodyGyromeanY	num	Mean
63	fBodyGyromeanZ	num	Mean
64	fBodyGyrostdX	num	Mean
65	fBodyGyrostdY	num	Mean
66	fBodyGyrostdZ	num	Mean
67	fBodyGyromeanFreqX	num	Mean
68	fBodyGyromeanFreqY	num	Mean
69	fBodyGyromeanFreqZ	num	Mean
70	fBodyAccMagmean	num	Mean
71	fBodyAccMagstd	num	Mean
72	fBodyAccMagmeanFreq	num	Mean
73	fBodyBodyAccJerkMagmean	num	Mean
74	fBodyBodyAccJerkMagstd	num	Mean
75	fBodyBodyAccJerkMagmeanFreq	num	Mean
76	fBodyBodyGyroMagmean	num	Mean
77	fBodyBodyGyroMagstd	num	Mean
78	fBodyBodyGyroMagmeanFreq	num	Mean
79	fBodyBodyGyroJerkMagmean	num	Mean
80	fBodyBodyGyroJerkMagstd	num	Mean
81	fBodyBodyGyroJerkMagmeanFreq	num	Mean
82	angletBodyAccMean,gravity	num	Mean
83	angletBodyAccJerkMean,gravityMean	num	Mean
84	angletBodyGyroMean,gravityMean	num	Mean
85	angletBodyGyroJerkMean,gravityMean:	num	Mean
86	angleX,gravityMean	num	Mean
87	angleY,gravityMean	num	Mean
88	angleZ,gravityMean	num	Mean

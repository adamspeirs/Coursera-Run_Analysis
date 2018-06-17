DATA DICTIONARY - msDataAvgs

Variables
=========

1. subjects
Represents group of 30 volunteers through assignment of numbers 1-30. 

2. activities
Each volunteer performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

------------------
Feature Variables:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeacceleration-xyz and timegyro-xyz. These time domain signals were captured at a constant rate of 50 Hz. 

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timebodyacceleration-xyz and timegravityacceleration-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timebodyaccelerationjerk-xyz and timebodygyrojerk-xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timebodyaccelerationmagnitude, timegravityaccelerationmagnitude, timebodyaccelerationjerkmagnitude, timebodygyromagnitude, timebodygyrojerkmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencybodyacceleration-xyz, frequencybodyaccelerationjerk-xyz, frequencybodygyro-xyz, frequencybodyaccelerationjerkmagnitude, frequencybodygyromagnitude, frequencybodygyrojerkmagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

timebodyacceleration-xyz
timegravityacceleration-xyz
timebodyaccelerationjerk-xyz
timebodygyro-xyz
timebodygyrojerk-xyz
timebodyaccelerationmagnitude
timegravityaccelerationmagnitude
timebodyaccelerationjerkmagnitude
timebodygyromagnitude
timebodygyrojerkmagnitude
frequencybodyacceleration-xyz
frequencybodyaccelerationjerk-xyz
frequencybodygyro-xyz
frequencybodyaccelerationmagnitude
frequencybodyaccelerationjerkmagnitude
frequencybodygyromagnitude
frequencybodygyrojerkmagnitude

The set of variables that were estimated from these signals are: 
mean(): meanvalue
std(): standarddeviation

Each of the following variables contains the average/mean of the observations gathered during the experiment as group by subject then activity. For instance, the value for Subject 1 - WALKING, under variable 'timebodyaccelerationmeanvaluex' in this data set is the mean of 96 observations captured in the original experiment dataset. 

3. timebodyaccelerationmeanvaluex
4. timebodyaccelerationmeanvaluey
5. timebodyaccelerationmeanvaluez
6. timebodyaccelerationstandarddeviationx
7. timebodyaccelerationstandarddeviationy
8. timebodyaccelerationstandarddeviationz
9. timegravityaccelerationmeanvaluex
10. timegravityaccelerationmeanvaluey
11. timegravityaccelerationmeanvaluez
12. timegravityaccelerationstandarddeviationx
13. timegravityaccelerationstandarddeviationy
14. timegravityaccelerationstandarddeviationz
15. timebodyaccelerationjerkmeanvaluex
16. timebodyaccelerationjerkmeanvaluey
17. timebodyaccelerationjerkmeanvaluez
18. timebodyaccelerationjerkstandarddeviationx
19. timebodyaccelerationjerkstandarddeviationy
20. timebodyaccelerationjerkstandarddeviationz
21. timebodygyromeanvaluex
22. timebodygyromeanvaluey
23. timebodygyromeanvaluez
24. timebodygyrostandarddeviationx
25. timebodygyrostandarddeviationy
26. timebodygyrostandarddeviationz
27. timebodygyrojerkmeanvaluex
28. timebodygyrojerkmeanvaluey
29. timebodygyrojerkmeanvaluez
30. timebodygyrojerkstandarddeviationx
31. timebodygyrojerkstandarddeviationy
32. timebodygyrojerkstandarddeviationz
33. timebodyaccelerationmagnitudemeanvalue
34. timebodyaccelerationmagnitudestandarddeviation
35. timegravityaccelerationmagnitudemeanvalue
36. timegravityaccelerationmagnitudestandarddeviation
37. timebodyaccelerationjerkmagnitudemeanvalue
38. timebodyaccelerationjerkmagnitudestandarddeviation
39. timebodygyromagnitudemeanvalue
40. timebodygyromagnitudestandarddeviation
41. timebodygyrojerkmagnitudemeanvalue
42. timebodygyrojerkmagnitudestandarddeviation
43. frequencybodyaccelerationmeanvaluex
44. frequencybodyaccelerationmeanvaluey
45. frequencybodyaccelerationmeanvaluez
46. frequencybodyaccelerationstandarddeviationx
47. frequencybodyaccelerationstandarddeviationy
48. frequencybodyaccelerationstandarddeviationz
49. frequencybodyaccelerationjerkmeanvaluex
50. frequencybodyaccelerationjerkmeanvaluey
51. frequencybodyaccelerationjerkmeanvaluez
52. frequencybodyaccelerationjerkstandarddeviationx
53. frequencybodyaccelerationjerkstandarddeviationy
54. frequencybodyaccelerationjerkstandarddeviationz
55. frequencybodygyromeanvaluex
56. frequencybodygyromeanvaluey
57. frequencybodygyromeanvaluez
58. frequencybodygyrostandarddeviationx
59. frequencybodygyrostandarddeviationy
60. frequencybodygyrostandarddeviationz
61. frequencybodyaccelerationmagnitudemeanvalue
62. frequencybodyaccelerationmagnitudestandarddeviation
63. frequencybodybodyaccelerationjerkmagnitudemeanvalue
64. frequencybodybodyaccelerationjerkmagnitudestandarddeviation
65. frequencybodybodygyromagnitudemeanvalue
66. frequencybodybodygyromagnitudestandarddeviation
67. frequencybodybodygyrojerkmagnitudemeanvalue
68. frequencybodybodygyrojerkmagnitudestandarddeviation


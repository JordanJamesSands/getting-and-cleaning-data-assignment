## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


These signals were then summarised for each trial with the metrics below (means and standard deviations):

## METADATA

### subjectID
	Number between 1 and 30 denoting the unique ID assigned to each subject
### activity
	The activity performed during the trial, one of walking, walking upstairs, walking downstairs, sitting, standing and laying
	
## TIME INDEXED DATA
	
### time_bodyacc_DIM_mean
	body acceleration averaged over time, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

### time_gravityacc_DIM_mean
	Total gravitational acceleration averaged over time, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

time_bodyacc_jerk_DIM_mean
	body jerk averaged over time, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

time_bodygyro_DIM_mean
	gyroscopic acceleration of the body, averaged over time, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

time_bodygyrojerk_DIM_mean
	gyroscopic jerk of the body, averaged over time, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

time_bodyaccmag_mean
	Magnitute of body acceleration, averaged over time, normalised to within [-1,1].

time_gravityaccmag_mean
	Magnitute of total gravitational acceleration, averaged over time, normalised to within [-1,1].
	
time_bodyaccjerkmag_mean
	Magnitute of jerk of the body, averaged over time, normalised to within [-1,1].

time_bodygyromag_mean
	Magnitute of gyroscopic acceleration on the body, averaged over time, normalised to within [-1,1].

time_bodygyrojerkmag_mean
	Magnitute of gyroscopic jerk on the body, averaged over time, normalised to within [-1,1].
	
	
===============TRANSFORMED (FOURIER) DATA===============

fourier_bodyacc_DIM_mean
	body acceleration averaged over transformed wave, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

fourier_bodyacc_jerk_DIM_mean
	body jerk averaged over transformed wave, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

fourier_bodygyro_DIM_mean
	gyroscopic acceleration of the body, averaged over transformed wave, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

fourier_bodygyrojerk_DIM_mean
	gyroscopic jerk of the body, averaged over transformed wave, normalised to within [-1,1]. Where DIM is one of X,Y,Z relating to dimension measured

fourier_bodyaccmag_mean
	Magnitute of body acceleration, averaged over transformed wave, normalised to within [-1,1].

	
fourier_bodyaccjerkmag_mean
	Magnitute of jerk of the body, averaged over transformed wave, normalised to within [-1,1].

fourier_bodygyromag_mean
	Magnitute of gyroscopic acceleration on the body, averaged over transformed wave, normalised to within [-1,1].

fourier_bodygyrojerkmag_mean
	Magnitute of gyroscopic jerk on the body, averaged over transformed wave, normalised to within [-1,1].	


Note that the data also includes standard deviation of all of the above data, denoted std
	
--- summary.txt ---
This table summarises the above data by averaging the values of each subject activity pair. 30 subjects x 6 activities makes 180 rows of the summary table.

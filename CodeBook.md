# Code Book
This codebook summarizes the resulting data fields in tidydata.txt.
## Identifiers
* Subject_Id - The ID of the test subject
* Activity - The type of activity performed when the corresponding measurements were taken
## Measurements
The below variables contain the mean measurements for each subject by activity.  Each subject has one row per activity.  Means were taken on the normalized features from the original data and therefore are bounded between (-1,1).

* TimeDomain_BodyAcceleration_Mean_X
* TimeDomain_BodyAcceleration_Mean_Y
* TimeDomain_BodyAcceleration_Mean_Z
* TimeDomain_BodyAcceleration_StandardDeviation_X
* TimeDomain_BodyAcceleration_StandardDeviation_Y
* TimeDomain_BodyAcceleration_StandardDeviation_Z
* TimeDomain_GravityAcceleration_Mean_X
* TimeDomain_GravityAcceleration_Mean_Y
* TimeDomain_GravityAcceleration_Mean_Z
* TimeDomain_GravityAcceleration_StandardDeviation_X
* TimeDomain_GravityAcceleration_StandardDeviation_Y
* TimeDomain_GravityAcceleration_StandardDeviation_Z
* TimeDomain_BodyAccelerationJerk_Mean_X
* TimeDomain_BodyAccelerationJerk_Mean_Y
* TimeDomain_BodyAccelerationJerk_Mean_Z
* TimeDomain_BodyAccelerationJerk_StandardDeviation_X
* TimeDomain_BodyAccelerationJerk_StandardDeviation_Y
* TimeDomain_BodyAccelerationJerk_StandardDeviation_Z
* TimeDomain_BodyGyro_Mean_X
* TimeDomain_BodyGyro_Mean_Y
* TimeDomain_BodyGyro_Mean_Z
* TimeDomain_BodyGyro_StandardDeviation_X
* TimeDomain_BodyGyro_StandardDeviation_Y
* TimeDomain_BodyGyro_StandardDeviation_Z
* TimeDomain_BodyAngularVelocity_Mean_X
* TimeDomain_BodyAngularVelocity_Mean_Y
* TimeDomain_BodyAngularVelocity_Mean_Z
* TimeDomain_BodyAngularVelocity_StandardDeviation_X
* TimeDomain_BodyAngularVelocity_StandardDeviation_Y
* TimeDomain_BodyAngularVelocity_StandardDeviation_Z
* TimeDomain_BodyAccelerationMagnitude_Mean
* TimeDomain_BodyAccelerationMagnitude_StandardDeviation
* TimeDomain_GravityAccelerationMagnitude_Mean
* TimeDomain_GravityAccelerationMagnitude_StandardDeviation
* TimeDomain_BodyAccelerationJerkMagnitude_Mean
* TimeDomain_BodyAccelerationJerkMagnitude_StandardDeviation
* TimeDomain_BodyGyroMagnitude_Mean
* TimeDomain_BodyGyroMagnitude_StandardDeviation
* TimeDomain_BodyAngularVelocityMagnitude_Mean
* TimeDomain_BodyAngularVelocityMagnitude_StandardDeviation
* FrequencyDomain_BodyAcceleration_Mean_X
* FrequencyDomain_BodyAcceleration_Mean_Y
* FrequencyDomain_BodyAcceleration_Mean_Z
* FrequencyDomain_BodyAcceleration_StandardDeviation_X
* FrequencyDomain_BodyAcceleration_StandardDeviation_Y
* FrequencyDomain_BodyAcceleration_StandardDeviation_Z
* FrequencyDomain_BodyAccelerationJerk_Mean_X
* FrequencyDomain_BodyAccelerationJerk_Mean_Y
* FrequencyDomain_BodyAccelerationJerk_Mean_Z
* FrequencyDomain_BodyAccelerationJerk_StandardDeviation_X
* FrequencyDomain_BodyAccelerationJerk_StandardDeviation_Y
* FrequencyDomain_BodyAccelerationJerk_StandardDeviation_Z
* FrequencyDomain_BodyGyro_Mean_X
* FrequencyDomain_BodyGyro_Mean_Y
* FrequencyDomain_BodyGyro_Mean_Z
* FrequencyDomain_BodyGyro_StandardDeviation_X
* FrequencyDomain_BodyGyro_StandardDeviation_Y
* FrequencyDomain_BodyGyro_StandardDeviation_Z
* FrequencyDomain_BodyAccelerationMagnitude_Mean
* FrequencyDomain_BodyAccelerationMagnitude_StandardDeviation
* FrequencyDomain_BodyBodyAccelerationJerkMagnitude_Mean
* FrequencyDomain_BodyBodyAccelerationJerkMagnitude_StandardDeviation
* FrequencyDomain_BodyBodyGyroMagnitude_Mean
* FrequencyDomain_BodyBodyGyroMagnitude_StandardDeviation
* FrequencyDomain_BodyBodyAngularVelocityMagnitude_Mean
* FrequencyDomain_BodyBodyAngularVelocityMagnitude_StandardDeviation
## Activity Values
* WALKING 
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

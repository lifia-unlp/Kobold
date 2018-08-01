accessing
sumStartTimeInterruptions

	^interruptions inject:0 into: [:subDuration :interruption | subDuration + interruption startTime asNumber].
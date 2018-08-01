accessing
totalInterruptedTime

	^interruptions inject:0 into: [:subDuration :interruption | subDuration + interruption duration ].
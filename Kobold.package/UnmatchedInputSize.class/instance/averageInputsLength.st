accessing
averageInputsLength
	^ ((self events sumNumbers: #textLength) / self eventsCount) asFloat floor
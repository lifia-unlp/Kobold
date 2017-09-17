statistics
recalculateTextLengthMeanFrom: aUsabilityEvent
	textLengthMean := eventsCount == 1
		ifTrue: [ aUsabilityEvent textLength ]
		ifFalse: [ ((textLengthMean * (eventsCount - 1) + aUsabilityEvent textLength)
				/ eventsCount) asFloat ]
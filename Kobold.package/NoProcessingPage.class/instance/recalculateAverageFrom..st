accessing
recalculateAverageFrom: aUsabilityEvent
	eventsCount := eventsCount + 1.
	timeAverage := eventsCount == 1
		ifTrue: [ aUsabilityEvent time ]
		ifFalse: [ ((timeAverage * (eventsCount - 1) + aUsabilityEvent time) / eventsCount) asFloat ]
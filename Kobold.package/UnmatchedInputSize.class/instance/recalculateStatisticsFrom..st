statistics
recalculateStatisticsFrom: aUsabilityEvent
	eventsCount := eventsCount + 1.
	self recalculateTextLengthVarianceFrom: aUsabilityEvent.
	self recalculateTextLengthMeanFrom: aUsabilityEvent
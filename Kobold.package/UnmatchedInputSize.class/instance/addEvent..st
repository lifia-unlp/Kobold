accessing
addEvent: aUsabilityEvent
	super addEvent: aUsabilityEvent.
	self recalculateStatisticsFrom: aUsabilityEvent
accessing
addEvent: aUsabilityEvent
	super addEvent: aUsabilityEvent.
	self recalculateAverageFrom: aUsabilityEvent
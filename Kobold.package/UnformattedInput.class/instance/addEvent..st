accessing
addEvent: aUsabilityEvent
	super addEvent: aUsabilityEvent.
	self classifyByExpression: aUsabilityEvent
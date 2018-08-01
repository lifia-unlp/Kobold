accessing
classifyByExpression: aUsabilityEvent
	self expressions do: [ :exp | exp addIfMatches: aUsabilityEvent ]
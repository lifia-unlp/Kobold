testing
event: usabilityEvent belongsIn: smell
	^ (self hashFor: smell anyEvent) = (self hashFor: usabilityEvent)
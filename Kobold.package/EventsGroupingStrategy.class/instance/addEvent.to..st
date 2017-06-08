events handling
addEvent: usabilityEvent to: finder
	self smells
		detect: [ :smell | self event: usabilityEvent belongsIn: smell ]
		ifFound: [ :smell | smell addEvent: usabilityEvent ]
		ifNone:
			[ self addSmellWithEvent: usabilityEvent to: finder ]
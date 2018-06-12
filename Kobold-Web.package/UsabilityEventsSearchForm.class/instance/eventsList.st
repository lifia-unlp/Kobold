accessing - children
eventsList
	^ eventsList ifNil: [ eventsList := UsabilityEventsList for: self client defaultVersion events ]
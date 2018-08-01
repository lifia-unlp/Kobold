accessing
addToGroup: string

	(self anyGroupAdmits: string)
		ifTrue: [self addToGroups: string]
		ifFalse: [self createNewGroupFor: string].
	self recalculateValuesWithOccurrences
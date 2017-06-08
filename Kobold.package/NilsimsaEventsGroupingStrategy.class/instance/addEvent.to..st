events handling
addEvent: usabilityEvent to: finder
	| key smell smellIsNew |
	key := self criterionFor: usabilityEvent.
	smellIsNew := false.
	self smellsByCriterion at: key ifAbsent: [ smellIsNew := true ].
	smell := self smellsByCriterion
		at: key
		ifAbsentPut: [ finder badSmellOn: usabilityEvent inOrderedCollection ].
	smellIsNew
		ifFalse: [ smell addEvent: usabilityEvent ].
	finder reevaluate: smell
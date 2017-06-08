accessing
addEventByCriterion: event
	| key smell smellIsNew keyToInsert |
	key := self criterionFor: event.
	keyToInsert := self similarKeyOrAnswer: key.
	smellIsNew := false.
	self smellsByCriterion at: keyToInsert ifAbsent: [smellIsNew := true].
	smell := self smellsByCriterion at: keyToInsert
				ifAbsentPut: [self badSmellOn: event inOrderedCollection].
	smellIsNew ifFalse: [smell addEvent: event].
	self reevaluate: smell
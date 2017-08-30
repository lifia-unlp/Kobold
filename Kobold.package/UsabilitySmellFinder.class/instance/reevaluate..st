accessing
reevaluate: smell
	(self approves: smell)
		ifTrue: [ self cacheSmell: smell ]
		ifFalse: [ cachedSmells remove: smell ifAbsent: [  ] ]
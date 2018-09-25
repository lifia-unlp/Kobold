accessing
reevaluate: smell
self inspect.
	(self approves: smell)
		ifTrue: [ self cacheSmell: smell ]
		ifFalse: [ cachedSmells remove: smell ifAbsent: [  ] ]
		
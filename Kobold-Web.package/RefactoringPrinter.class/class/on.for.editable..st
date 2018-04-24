instance creation
on: aRefactoring for: anUsabilitySmell editable: aBoolean
	| printerClass |
	printerClass := self allConcreteSubclasses
		detect:
			[ :subclass | subclass name includesSubstring: aRefactoring class name ]
		ifNone: [ self ].
	^ printerClass
		newOn: aRefactoring
		for: anUsabilitySmell
		editable: aBoolean
instance creation
on: aRefactoring for: usabilitySmell
	| printerClass |
	printerClass := self allConcreteSubclasses
		detect: [ :subclass | subclass name includesSubstring: aRefactoring class name ]
		ifNone: [ self ].
	^ printerClass newOn: aRefactoring for: usabilitySmell
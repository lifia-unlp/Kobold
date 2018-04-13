instance creation
on: aRefactoring for: anUsabilitySmell
	| printerClass |
	printerClass := self allConcreteSubclasses
		detect: [ :subclass | subclass name includesSubstring: aRefactoring class name ]
		ifNone: [ self ].
	^ printerClass newOn: aRefactoring for: anUsabilitySmell
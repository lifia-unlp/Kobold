accessing - refactoring
suggestedRefactoringsClasses
	| suggestions |
	suggestions := SplitPage inOrderedCollection.
	self upwards
		ifTrue: [ suggestions add: LinkToTop ].
	^ suggestions
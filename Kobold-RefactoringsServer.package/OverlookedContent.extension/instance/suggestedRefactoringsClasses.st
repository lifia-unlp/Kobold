*Kobold-RefactoringsServer
suggestedRefactoringsClasses
	| suggestions |
	suggestions := SplitPage inOrderedCollection.
	(self downwards isNil or: [self upwards])
		ifTrue: [ suggestions add: LinkToTop ].
	^ suggestions
*Kobold-RefactoringsServer
suggestedRefactoringsClassesFrom: someParameters
	| suggestions |
	suggestions := SplitPage inOrderedCollection.
	(someParameters at: #upwards) = 1
		ifTrue: [ suggestions add: LinkToTop ].
	^ suggestions
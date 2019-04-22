*Kobold-RefactoringsServer
suggestedRefactoringsClassesFrom: someParameters
	| suggestions |
	suggestions := SplitPage inOrderedCollection.
	(someParameters at: '1') = 1
		ifTrue: [ suggestions add: LinkToTop ].
	^ suggestions
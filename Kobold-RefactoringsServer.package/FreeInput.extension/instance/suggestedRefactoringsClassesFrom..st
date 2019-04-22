*Kobold-RefactoringsServer
suggestedRefactoringsClassesFrom: someParameters
	^ someParameters size <= 8
		ifTrue: [ InputIntoRadios inOrderedCollection ]
		ifFalse: [ AddAutocomplete inOrderedCollection ]
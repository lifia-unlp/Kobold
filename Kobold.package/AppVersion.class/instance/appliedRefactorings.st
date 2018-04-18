refactoring
appliedRefactorings
	^ self changes flatCollect: [ :aChange | aChange refactorings ].
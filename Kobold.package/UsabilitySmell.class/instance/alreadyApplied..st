refactoring
alreadyApplied: aRefactoring
	^ self appliedRefactorings
		anySatisfy: [ :refactoring | refactoring class = aRefactoring class ]
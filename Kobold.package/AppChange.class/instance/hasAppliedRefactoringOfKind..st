testing
hasAppliedRefactoringOfKind: aRefactoring
	^ self refactorings anySatisfy: [ :ref | ref class = aRefactoring class].
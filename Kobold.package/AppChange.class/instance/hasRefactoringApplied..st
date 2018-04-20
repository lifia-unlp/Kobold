testing
hasRefactoringApplied: aRefactoring
	^ self refactorings anySatisfy: [ :ref | ref class = aRefactoring class ].
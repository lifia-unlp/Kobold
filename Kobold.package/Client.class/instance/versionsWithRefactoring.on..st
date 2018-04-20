accessing
versionsWithRefactoring: aRefactoring on: anUsabilitySmell
	^ self versions select: [ :version | version hasRefactoringApplied: aRefactoring on: anUsabilitySmell  ].
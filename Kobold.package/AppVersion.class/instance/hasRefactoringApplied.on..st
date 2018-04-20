testing
hasRefactoringApplied: aRefactoring on: anUsabilitySmell

	^ self changes anySatisfy: [ :change | change smell = anUsabilitySmell  and: [ change hasRefactoringApplied: aRefactoring  ] ].
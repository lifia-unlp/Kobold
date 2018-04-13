accessing
smell: anUsabilitySmell refactoring: aRefactoring
	^self new 
		smell: anUsabilitySmell; 
		refactorings: (OrderedCollection with: aRefactoring);
		yourself. 
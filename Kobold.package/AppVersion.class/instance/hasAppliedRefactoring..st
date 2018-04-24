testing
hasAppliedRefactoring: aRefactoring 

	^ self appliedRefactorings detect: [ :ref | ref = aRefactoring ] ifFound: [ true ]  ifNone: [ false ]
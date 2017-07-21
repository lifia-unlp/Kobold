accessing - refactoring
suggestedRefactoringsClasses
	^ (self refactoringsClassesByExpression at: self expression name)
		collect: [ :className | Smalltalk at: className ]
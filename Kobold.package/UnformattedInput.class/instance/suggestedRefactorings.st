accessing
suggestedRefactorings
	^ (self refactoringsClassByExpression at: self expression)
		collect: [ :refactoringClass | refactoringClass from: self ]
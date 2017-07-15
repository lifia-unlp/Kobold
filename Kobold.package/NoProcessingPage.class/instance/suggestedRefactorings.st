accessing
suggestedRefactorings
	^ self suggestedRefactoringsClasses
		collect: [ :refactoringClass | refactoringClass from: self ]
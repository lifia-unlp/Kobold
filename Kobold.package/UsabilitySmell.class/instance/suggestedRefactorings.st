accessing - refactoring
suggestedRefactorings
	^ self suggestedRefactoringsClasses
		collect: [ :refactoringClass | refactoringClass from: self ]
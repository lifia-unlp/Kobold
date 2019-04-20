accessing
refactoringWithId: aString
	^ self allRefactoringsClasses
		detect: [ :refactoringClass | refactoringClass refactoringId = aString asNumber ]
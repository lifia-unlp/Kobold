refactoring
appliedRefactoringOfKind: class
	^ self refactorings detect: [ :refactoring | refactoring class = class ]
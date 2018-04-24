removing
removeRefactoringFrom: aVersion
	aVersion removeRefactoring: self refactoring on: self smell. 				
	
	"if refactoring was removed from all versions, removes it from the smell collection"
	(self client versionsWithRefactoring: aVersion) isEmpty 
		ifTrue: [ self smell removeRefactoring: self refactoring].
	
	self client save. 
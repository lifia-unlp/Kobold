removing
removeRefactoring: aRefactoring on: aBadSmell version: aVersion
	
	aVersion removeRefactoring: aRefactoring on: aBadSmell. 				
	
	"if refactoring was removed from all versions, removes it from the smell collection"
	(self versionsWithRefactoring: aRefactoring) isEmpty 
		ifTrue: [ aBadSmell removeRefactoring: aRefactoring].
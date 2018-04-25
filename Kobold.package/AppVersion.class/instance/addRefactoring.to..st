accessing
addRefactoring: aRefactoring to: aBadSmell
	| aChange |
	
	aChange := self changeFor: aBadSmell.
	
	aChange 
		ifNil: [ self changes add: (AppChange smell: aBadSmell  refactoring: aRefactoring ) ] 
		ifNotNil: [ aChange addRefactoring: aRefactoring ] 
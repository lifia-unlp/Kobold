removing
removeRefactoring: aRefactoring
	self refactorings removeAllSuchThat: [ :ref | ref class = aRefactoring class ].
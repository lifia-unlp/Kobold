removing
removeRefactoring: aRefactoring on: aSmell

	self changes select: [ :change | change smell = aSmell ] thenDo: [ :change | change removeRefactoring: aRefactoring ].
	
	" discard changes whose refactoring collection is empty"
	self changes: (self changes select: [:change | change hasRefactoringsApplied ] )
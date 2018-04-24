instance creation
newOn: aRefactoring for: anUsabilitySmell editable: aBoolean

	^(self new)
		refactoring: aRefactoring;
		smell: anUsabilitySmell;
		editable: aBoolean;
		yourself
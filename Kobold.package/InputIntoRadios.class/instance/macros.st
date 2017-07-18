accessing
macros
	^ super macros
		at: #name put: self refactoringId;
		yourself
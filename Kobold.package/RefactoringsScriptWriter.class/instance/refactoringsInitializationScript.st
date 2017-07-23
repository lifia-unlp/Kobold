code generation
refactoringsInitializationScript
	| refactoringsClasses |
	refactoringsClasses := (self refactorings collect: [ :refactoring | refactoring class ])
		asSet.
	^ refactoringsClasses asSet
		inject: ''
		into: [ :code :uniqueRefactoring | code , uniqueRefactoring initializationScript ]
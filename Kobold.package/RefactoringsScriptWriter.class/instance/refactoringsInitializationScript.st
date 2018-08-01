code generation
refactoringsInitializationScript
	| refactoringsClasses |
	refactoringsClasses := (self refactorings collect: [ :refactoring | refactoring class ])
		asSet.
	^ refactoringsClasses asSet
		inject: ''
		into: [ :code :uniqueRefactoring | code , uniqueRefactoring initializationScript ]
		
"initializationScript  metodo de clase de cada refactorin que cootiene el codigo html y javacrip"
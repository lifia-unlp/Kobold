refactoring
applyRefactoring
	
	| versionNames anAppChange |
	versionNames:= $, split: self targetVersions.
	
	anAppChange:= AppChange smell: self smell refactoring: self refactoring.
	
	self client versions select: [ :version | (versionNames includes: (version versionName)) and: [ (version hasRefactoringApplied: self refactoring on: self smell) not  ] ] 
	thenDo: [ :version | version addChange: anAppChange ].
	
	self smell applyRefactoring: self refactoring. 
	self client save.
	
	
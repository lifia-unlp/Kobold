refactoring
applyRefactoring
	
	| versionNames |
	versionNames:= $, split: self targetVersions.
	
	self client versions select: [ :version | (versionNames includes: (version versionName)) and: [ (version hasAppliedRefactoringOfKind: self refactoring on: self smell) not  ] ] 
	thenDo: [ :version | version addChange: (AppChange smell: self smell refactoring: self refactoring) ].
	
	self smell applyRefactoring: self refactoring. 
	self client save.
	
	
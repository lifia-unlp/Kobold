refactoring
applyRefactoring
	
	| versionNames |
	versionNames:= $, split: self targetVersions.
	
	self client versions select: [ :version | (versionNames includes: (version versionName)) and: [ (version hasAppliedRefactoringOfKind: self refactoring on: self smell) not  ] ] 
	thenDo: [ :version | version addRefactoring: self refactoring to: self smell  ].
	
	self smell applyRefactoring: self refactoring. 
	
	self refactoring save.
	self client save.
	
	
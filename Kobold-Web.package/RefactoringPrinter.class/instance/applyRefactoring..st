refactoring
applyRefactoring: aRefactoring
	
	| versionNames anAppChange |
	versionNames:= $, split: self targetVersions.
	
	anAppChange:= AppChange smell: self smell refactoring: aRefactoring.
	
	self client versions select: [ :version | versionNames contains: [:vName | vName = version versionName ]] thenDo: [ :version | version addChange: anAppChange ].
	
	self smell applyRefactoring: self refactoring. 
	self client save.
	
	
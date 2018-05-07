refactoring
applyRefactoring
	| versions |
	versions := self getTargetVersions.
	versions isEmpty
		ifTrue: [ ^ self ].
	versions do: [ :version | version addRefactoring: self refactoring to: self smell ].
	self smell applyRefactoring: self refactoring.
	self refactoring save.
	self client save
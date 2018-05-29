rendering
applyRefactoring
	self version addRefactoring: self refactoring to: self smell.
	self smell applyRefactoring: self refactoring.
	self refactoring save.
	self client save.
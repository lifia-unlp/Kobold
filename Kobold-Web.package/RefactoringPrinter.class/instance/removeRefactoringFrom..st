removing
removeRefactoringFrom: aVersion
	self client removeRefactoring: self refactoring  on: self smell version: aVersion.
	self client save. 
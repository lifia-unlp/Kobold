accessing - macros
macros
	^ super macros
		at: #newName put: self newName;
		yourself
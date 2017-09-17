accessing
macros
	^ super macros
		at: #newLength put: self newLength printString;
		yourself
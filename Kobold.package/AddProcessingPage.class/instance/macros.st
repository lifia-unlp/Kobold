accessing
macros
	^ super macros
		at: #formXpath put: self formXPath printString;
		yourself
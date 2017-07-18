accessing
macros
	^ super macros
		at: #defaultOptionIndex put: self defaultOptionIndex printString;
		yourself
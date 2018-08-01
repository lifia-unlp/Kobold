accessing - macros
macros
	^ super macros
		at: #url put: self url asString;
		yourself
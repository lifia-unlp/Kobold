accessing - macros
macros
	^ super macros
		at: #text put: self text;
		yourself
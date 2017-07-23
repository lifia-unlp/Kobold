accessing - macros
macros
	^ super macros
		at: #elementVarName put: self elementVarName;
		at: #elementXPath put: self elementXpath;
		yourself
accessing
macros
	^ super macros
		at: #valuesList put: self valuesList;
		yourself
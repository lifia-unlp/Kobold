updating
updateRoot: anHtmlRoot
	
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: self title.
	
"	self developmentMode
		ifTrue: [self updateRootDev: anHtmlRoot]
		ifFalse: [self updateRootDeploy: anHtmlRoot]
"
code generation
printScriptOn: aStream
	aStream << 'var {elementVarName} = $(xpathInstance.getElementByXpath({elementXPath}));'.
	aStream << 'if(typeof({elementVarName}[0]) != "undefined") \{'.
	self printElementScriptOn: aStream.
	aStream << '}'
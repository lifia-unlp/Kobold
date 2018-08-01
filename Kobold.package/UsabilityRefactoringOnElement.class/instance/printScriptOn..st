code generation
printScriptOn: aStream
	aStream
		<<
			'var {elementVarName} = $(xpathInstance.getElementByXpath({elementXPath}));<n>'
				expandMacros.
	aStream << 'if(typeof({elementVarName}[0]) != "undefined") \{<n>' expandMacros.
	self printElementScriptOn: aStream.
	aStream << '<n>}' expandMacros
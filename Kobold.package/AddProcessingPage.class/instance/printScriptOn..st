code generation
printScriptOn: aStream
	aStream
		<< 'var slowForm = $(xpathInstance.getElementByXpath({formXpath}));<n>' expandMacros.
	aStream << 'if(typeof(slowForm[0]) != "undefined") \{<n>' expandMacros.
	self printOverlayScriptOn: aStream.
	self printSubmissionInterceptionScriptOn: aStream.
	aStream << '<n>}' expandMacros
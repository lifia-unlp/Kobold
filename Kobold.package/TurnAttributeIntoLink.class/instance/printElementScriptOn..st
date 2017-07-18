code generation
printElementScriptOn: aStream
	aStream << '{elementVarName}.replaceWith($("<a href=''{url}''>"+{elementVarName}[0].outerHTML+"</a>"));'
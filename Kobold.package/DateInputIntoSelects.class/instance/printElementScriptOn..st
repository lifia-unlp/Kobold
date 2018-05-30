code generation
printElementScriptOn: aStream
	aStream << 'var submitFieldName =  {elementVarName}.attr("name");'.
	aStream cr.
	aStream << '{elementVarName}.attr("name","");'.
	aStream cr.
	aStream << '{elementVarName}.dateDropdowns(\{submitFieldName: submitFieldName\});'
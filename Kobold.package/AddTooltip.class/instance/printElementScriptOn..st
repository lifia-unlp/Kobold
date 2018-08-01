code generation
printElementScriptOn: aStream
	aStream << '{elementVarName}.addClass("tip");'.
	aStream << '{elementVarName}.attr("data-tip", "{text}");'.
	aStream << '$(".tip").tipr();'
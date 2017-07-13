code generation
printRadiosHandlerOn: aStream
	aStream
		<<
			('$("input:radio[name=\"<1s>\"]").change(function(){<2s>.val(this.value)})'
				expandMacrosWith: self refactoringId
				with: self elementVarName)
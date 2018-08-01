code generation
printRadiosHandlerOn: aStream
	aStream << '$("input:radio[name=''{name}'']").change(function()\{{elementVarName}.val(this.value)})'
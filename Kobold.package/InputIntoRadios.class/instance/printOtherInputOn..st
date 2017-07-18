code generation
printOtherInputOn: aStream
	| localMacros |
	localMacros := Dictionary
		with: #id -> (UUIDGenerator next printString copyWithoutAll: #-)
		with: #name -> self refactoringId
		with: #value -> 'Other'.
	aStream << '{elementVarName}.after("<p>'.
	aStream << ('<input type=''radio'' name=''{name}'' id=''{id}'' value=''{value}''>' format: localMacros).
	aStream << ('<label style=''cursor:pointer'' for=''{id}''>{value}</label> ' format: localMacros).
	aStream << ('<input type=''text'' id=''text{id}''/></p>");' format: localMacros).
	aStream
		<< ('$(\"#text<1s>\").keyup(function()\{{elementVarName}.val(this.value)\})' expandMacrosWith: (localMacros at: #id)).
	aStream << ('.click(function()\{$(\"#<1s>\").prop("checked", true)\});' expandMacrosWith: (localMacros at: #id))
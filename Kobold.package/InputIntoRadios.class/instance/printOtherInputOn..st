code generation
printOtherInputOn: aStream
	| macros |
	macros := Dictionary
		with: #id -> (UUIDGenerator next printString copyWithoutAll: #-)
		with: #name -> self refactoringId
		with: #value -> 'Other'
		with: #element -> self elementVarName.
	aStream << self elementVarName.
	aStream << '.after("<p>'.
	aStream << ('<input type=\\"radio\\" name=\\"{name}\\" id=\\"{id}\\" value=\\"{value}\\"> ' format: macros).
	aStream << ('<label style=\\"cursor:pointer\\" for=\\"{id}\\">{value}</label> ' format: macros).
	aStream << ('<input type=\\"text\\" id=\\"text{id}\\"/></p>");' format: macros).
	aStream << ('$(\"#text{id}\").keyup(function()\{{element}.val(this.value)\})' format: macros).
	aStream << ('.click(function()\{$(\"#{id}\").prop("checked", true)\});' format: macros)
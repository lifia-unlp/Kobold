code generation
printRadiosOn: aStream
	self printOtherInputOn: aStream.
	self values
		do: [ :value | 
			| macros |
			macros := Dictionary with: #id -> UUIDGenerator next with: #name -> self refactoringId with: #value -> value.
			aStream << self elementVarName.
			aStream << '.after("<p>'.
			aStream << ('<input type=\\"radio\\" name=\\"{name}\\" id=\\"{id}\\" value=\\"{value}\\"> ' format: macros).
			aStream << ('<label style=\\"cursor:pointer\\" for=\\"{id}\\">{value}</label>' format: macros).
			aStream << '</p>");' ].
	self printRadiosHandlerOn: aStream
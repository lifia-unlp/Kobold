bad smells
usefulFor: aBadSmellFinder

	| message |
	message := ('uses', self class name) asSymbol.
	^aBadSmellFinder perform: message "perform busca un metodo en la clase en el finder con el nombre usesNAMEBASEML"
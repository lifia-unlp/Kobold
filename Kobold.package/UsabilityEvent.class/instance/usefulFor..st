bad smells
usefulFor: aBadSmellFinder

	| message |
	message := ('uses', self class name) asSymbol.
	^aBadSmellFinder perform: message
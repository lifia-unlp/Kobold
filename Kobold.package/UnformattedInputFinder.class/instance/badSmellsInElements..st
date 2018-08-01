bad smells
badSmellsInElements: threatsByElement
	^self expressions inject: OrderedCollection new
		into: [:unformattedInputs :expression | unformattedInputs , (expression findMatches: threatsByElement ) asOrderedCollection]
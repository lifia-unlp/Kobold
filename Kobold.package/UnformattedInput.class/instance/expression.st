accessing
expression

	^(self expressions
		asSortedCollection: [:expression1 :expression2 | expression1 eventsCount > expression2 eventsCount])
			first
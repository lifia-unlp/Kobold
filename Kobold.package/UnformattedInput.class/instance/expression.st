accessing
expression
	^ (self expressions
		asSortedCollection: [ :mostMatched :lessMatched | mostMatched eventsCount > lessMatched eventsCount ])
		first
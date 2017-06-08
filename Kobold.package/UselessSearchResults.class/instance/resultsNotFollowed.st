accessing
resultsNotFollowed

	^self events select: [:search |   search foundResults and: [search resultFollowed  not] ]
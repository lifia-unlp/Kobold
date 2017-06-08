bad smells
addIfMatches: threat

	(self matches: threat) ifTrue: [self events add: threat]
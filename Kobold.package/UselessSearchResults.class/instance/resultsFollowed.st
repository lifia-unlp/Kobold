accessing
resultsFollowed

	^self events select: [:search | search foundResults and: [search resultFollowed] ]
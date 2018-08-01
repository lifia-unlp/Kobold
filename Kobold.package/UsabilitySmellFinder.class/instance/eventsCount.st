accessing
eventsCount
	^ self smellsByCriterion inject: 0 into: [ :count :smell | count + smell eventsCount ]
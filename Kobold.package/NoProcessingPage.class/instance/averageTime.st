accessing
averageTime

	^((self events inject: 0 into: [:total :request | total + request time])
		/ self eventsCount) asFloat floor
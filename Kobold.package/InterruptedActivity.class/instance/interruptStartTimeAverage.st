accessing
interruptStartTimeAverage

	^((self events inject: 0 into: [:total :pageVisit | total + pageVisit sumStartTimeInterruptions])
		/ self interruptedPageVisitsCount) asFloat floor
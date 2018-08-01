accessing
InterruptAverageTime

	^((self events inject: 0 into: [:total :pageVisit | total + pageVisit totalInterruptedTime])
		/ self interruptedPageVisitsCount) asFloat floor
accessing
totalInterruptions

	^self events inject: 0 into: [:total :pageVisit | total + pageVisit interruptions size]
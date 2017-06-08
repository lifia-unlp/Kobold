accessing
averageTime
	| totalTime timedEvents |
	timedEvents := self events select: [ :event | event time > 0 ].
	totalTime := timedEvents inject: 0 into: [ :sum :event | sum + event time ].
	^ (totalTime / timedEvents size / 1000) asFloat floor
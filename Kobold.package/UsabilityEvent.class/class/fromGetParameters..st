instance creation
fromGetParameters: getParameters

	| timestamp correctedMilliseconds |
	correctedMilliseconds := (getParameters at: 'timestamp') asNumber + self timestampOffset.
	timestamp := DateAndTime fromSeconds: correctedMilliseconds / 1000.
	^self at: timestamp
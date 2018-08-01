accessing
mostFrequentIndex

	^self nonDefaultSelectedIndexes isEmpty
		ifTrue: [^nil]
		ifFalse: [self nonDefaultSelectedIndexes mostFrequent]
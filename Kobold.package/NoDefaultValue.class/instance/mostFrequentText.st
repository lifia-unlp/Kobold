accessing
mostFrequentText

	^self nonDefaultSelectedTexts isEmpty
		ifTrue: [^nil]
		ifFalse: [self nonDefaultSelectedTexts mostFrequent]
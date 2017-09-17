tests-accessing
testAddEvent
	self assert: smellShort textLengthMean equals: lengths average asFloat.
	self assert: smellShort textLengthStandardDeviation equals: lengths stdev asFloat.
	self assert: smellShort eventsCount equals: lengths size.
	smellShort addEvent: (self newTextInputWithTextLength: 400).
	self assert: smellShort textLengthMean equals: (lengths copyWith: 400) average asFloat.
	self assert: smellShort textLengthStandardDeviation equals: (lengths copyWith: 400) stdev asFloat.
statistics
recalculateTextLengthVarianceFrom: aUsabilityEvent
	| n xn |
	n := eventsCount.
	xn := aUsabilityEvent textLength asNumber.
	textLengthVariance := eventsCount == 1
		ifTrue: [ 0 ]
		ifFalse: [ (n - 2) / (n - 1) * textLengthVariance + ((xn - textLengthMean) squared / n) ]
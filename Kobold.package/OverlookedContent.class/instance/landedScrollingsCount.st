testing
landedScrollingsCount
	^ self events count: [ :scrolling | scrolling landsIn: self averageTop withDelta: self maximumDeviation ]
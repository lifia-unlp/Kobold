bad smells
approves: unresponsiveElement
	^ (self latestEventsOf: unresponsiveElement) >= self minimumEventsCount
		and: [ unresponsiveElement domElement isContainedIn: self maximumDomElementSize ]
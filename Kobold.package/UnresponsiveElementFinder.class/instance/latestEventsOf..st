bad smells
latestEventsOf: unresponsiveElement
	^ unresponsiveElement eventsCount: [ :event | event timestamp > self timeWindowStart ]
instance creation
events: events
	^ self new
		addAllEvents: events;
		yourself
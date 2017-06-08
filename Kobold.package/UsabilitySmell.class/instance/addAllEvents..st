accessing
addAllEvents: eventsCollection
	eventsCollection do: [ :event | self addEvent: event ]
accessing
addEvents: eventsCollection
	(self getUseful: eventsCollection) do: [ :event | self addEvent: event ]
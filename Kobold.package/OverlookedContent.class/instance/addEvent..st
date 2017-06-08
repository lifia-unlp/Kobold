accessing
addEvent: event
	super addEvent: event.
	self incrementAddedTopBy: event finalTop
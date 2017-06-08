instance creation
on: element events: events
	^ (self events: events)
		domElement: element;
		yourself
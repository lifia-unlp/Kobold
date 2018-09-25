controlling
repeatEvent: anEvent
	self client
		replicateEvent: anEvent times: 4;
		save
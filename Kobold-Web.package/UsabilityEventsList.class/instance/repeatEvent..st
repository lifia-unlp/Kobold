controlling
repeatEvent: anEvent
	self client defaultVersion 
		replicateEvent: anEvent times: 100.
	self client save.
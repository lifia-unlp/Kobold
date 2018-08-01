accessing
events
	^ self session user client events sort: [ :earlier :later | earlier timestamp > later timestamp ]
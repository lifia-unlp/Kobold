accessing
events
	^ self client defaultVersion events sort: [ :earlier :later | earlier timestamp > later timestamp ]
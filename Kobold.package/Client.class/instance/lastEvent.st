development tools
lastEvent
	^ self events detectMax: [ :event | event timestamp ]
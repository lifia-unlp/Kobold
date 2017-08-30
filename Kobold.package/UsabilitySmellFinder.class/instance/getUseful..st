events filtering
getUseful: events
	^ events select: [ :event | event usefulFor: self ]
accessing
findersFor: event
	^ self finders select: [ :finder | event usefulFor: finder ]
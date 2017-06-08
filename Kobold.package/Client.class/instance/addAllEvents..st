accessing
addAllEvents: eventsCollection

	self events addAll: eventsCollection.
	self finders do: [:finder | finder addEvents: eventsCollection].
	self persistEvents ifTrue: [self persistAllEvents: eventsCollection].
	[self recalculateBadSmells] fork
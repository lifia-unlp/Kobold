persisting
importEvents: events
	self events: self events , events.
	self finders do: [ :finder | finder addEvents: events ].
	[ self recalculateBadSmells ] fork
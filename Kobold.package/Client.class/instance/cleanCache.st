initialization
cleanCache
	self finders do: [ :finder | finder cleanCache ].
	self events: OrderedCollection new.
	self badSmells: OrderedCollection new
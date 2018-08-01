initialization
cleanCache
	self finders do: [ :finder | finder  ].
	self events: OrderedCollection new.
	self badSmells: OrderedCollection new
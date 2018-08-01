initialization
initialize
	super initialize.
	self ignored: false.
	self events: OrderedCollection new.
	self refactorings: OrderedCollection new
initialize-release
initialize: aRegex name: aName minimumProportion: aMinimumProportion

	super initialize.
	self regex: aRegex.
	self name: aName.
	self events: OrderedCollection new.
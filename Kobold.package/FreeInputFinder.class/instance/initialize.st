initialization
initialize
	super initialize.
	self setLevenshteinStrategy.
	self maximumUnfrequentValuesProportion: 0.2.
	self minimumGroupProportion: 0.1
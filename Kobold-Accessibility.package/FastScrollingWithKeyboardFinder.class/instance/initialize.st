initialization
initialize
	super initialize.
	"self minimumLandedPercentage: 40."
	self minimumLandedPercentage: 25.
	self minimumEventsCount: 3.
	self groupingStrategy: ScrollingEventsGropingStrategy new